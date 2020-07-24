#!/usr/bin/env python3

import os
from math import log
import subprocess
#import abc_py
from collections import OrderedDict
import argparse

def model_count_SearchMC(file):
	f = open(file, "r")
	cost = f.readline()
	var_names = f.readline()
	f.close()
	#print(cost)
	var_names = var_names[1:].split()
	#print(var_names)
	output_names = " "
	for var_name in var_names:
		output_names += "-output_name=" + var_name + " "
	#print(output_names)

	process = subprocess.Popen(["./SearchMC.pl", "-input_type=smt", "-cl=0.9" ,"-thres=2"] + output_names.split() + [file], stdout = subprocess.PIPE)
	result = process.communicate()[0].decode('utf-8')
	#print(result)
	lines = result.split('\n');
	upper_bound = 0
	lower_bound = 0
	for line in lines:
		l = line.split();
		if len(l) > 0 and l[1] == "Upper":
			upper_bound = l[-1];
			upper_bound = int(2**float(upper_bound))
			#print("Upper bound:", upper_bound)
		elif len(l) > 0 and l[1] == "Lower":
			lower_bound = l[-1];
			lower_bound = int(2**float(lower_bound))
			#print("Lower bound:", lower_bound)
	return (lower_bound, upper_bound)

def model_count_ABC(constraint, driver, bound = 0):
	driver.Parse(constraint)
	driver.InitializeSolver()
	driver.Solve()
	count = 0
	if bound != 0:
		count = driver.CountInts(bound)
	m = driver.getSatisfyingExamples()
	driver.reset()
	return (count, m)

def get_observation_constraints(directory):
	observationConstraints = {}
	for root,_,files in os.walk(directory):
		for file in files:
			if file[-4:] == "smt2":
				abs_path = os.path.abspath(os.path.join(root, file))
				f = open(abs_path, "r")
				cost = f.readline()
				var_names = f.readline()
				actual_constraint = f.read()
				f.close()
				cost = int(cost[1:])
				count = model_count_SearchMC(abs_path)
				if cost in observationConstraints:
					observationConstraints[cost].append((actual_constraint, count))
				else:
					observationConstraints[cost] = [(actual_constraint, count)]

	if not bool(observationConstraints):
		print("No leakage")
	else:
		threshold = 10
		costs = observationConstraints.keys()
		currentInterval = list(costs)[0]
		pathConditions = observationConstraints[currentInterval]

		for currentCost in observationConstraints.copy():
			if currentCost > currentInterval and currentCost < currentInterval + threshold:
				pathConditions += observationConstraints[currentCost]
				observationConstraints.pop(currentCost)
				observationConstraints[currentInterval] = pathConditions
			else:
				currentInterval = currentCost
				pathConditions = observationConstraints[currentInterval]

	return observationConstraints

def get_maximum_and_minimun_entropy_ABC(observationConstraints, domain_size):   # Deprecated
	constraints = {}
	abc_constraint = ""
	domain_size_assertion = ""
	for cost in observationConstraints:
		lower_bound = 0
		upper_bound = 0
		for (constraint,count) in observationConstraints[cost]:
			lower_bound += count[0]
			upper_bound += count[1]
		var_name = 'c' + str(cost)
		abc_constraint = '(declare-fun {} () Int)'.format(var_name) + abc_constraint
		abc_constraint += '(assert (and (<= {} {}) (>= {} {})))'.format(var_name, upper_bound, var_name, lower_bound)
		if domain_size_assertion == "":
			domain_size_assertion += var_name
		else:
			domain_size_assertion = '(+ {} {})'.format(domain_size_assertion, var_name)
	abc_constraint += '(assert (= {} {}))'.format(domain_size_assertion, domain_size)
	abc_constraint += '(check-sat)'
	print('abc_constraint:', abc_constraint)

	driver = abc_py.Driver()
	driver.InitializeLogger(0)
	driver.set_option(abc_py.REGEX_FLAG, 0x000f)
	driver.Parse(abc_constraint)
	driver.InitializeSolver()
	driver.Solve()
	m = driver.getSatisfyingExamples()
	min_entropy = 0
	max_entropy = 0
	while bool(m):
		entropy = 0
		driver.reset()
		additional_assertion = ""
		for key, value in m.items():
			if key[0:11] != "__vlab__int":
				prob = int(value)/domain_size
				entropy += -1 * prob * log(prob,2)
				additional_assertion += '(assert (not (= {} {})))'.format(key, value)
		if entropy > max_entropy:
			max_entropy = entropy
		elif entropy < min_entropy:
			min_entropy = entropy

		abc_constraint = abc_constraint.replace('(check-sat)', '')
		abc_constraint += additional_assertion
		abc_constraint += '(check-sat)'

		print('abc_constraint:', abc_constraint)

		driver.Parse(abc_constraint)
		driver.InitializeSolver()
		driver.Solve()
		m = driver.getSatisfyingExamples()

	return (min_entropy, max_entropy)


def get_maximum_entropy_alt(observationConstraints, domain_size):
	counts = {}
	upper_lower_bound = {}
	avg = int(domain_size/len(observationConstraints))
	sum_counts = 0
	max_entropy = 0
	for cost in observationConstraints:
		lower_bound = 0
		upper_bound = 0
		for (constraint,count) in observationConstraints[cost]:
			lower_bound += count[0]
			upper_bound += count[1]
		upper_lower_bound[cost] = (lower_bound, upper_bound)
		if avg >= lower_bound and avg <= upper_bound:
			counts[cost] = avg
			sum_counts += avg
		elif avg < lower_bound:
			counts[cost] = lower_bound
			sum_counts += lower_bound
		elif avg > upper_bound:
			counts[cost] = upper_bound
			sum_counts += upper_bound
	diff = sum_counts - domain_size
	if diff == 0:
		for cost in counts:
			prob = counts[cost]/domain_size
			max_entropy += -1 * prob * log(prob,2)
	elif diff > 0: # need to decrease
		while diff != 0:
			l = []
			min_diff_between_count_and_avg = -1
			prev_min = -1
			min_room_to_decrease = 0
			for cost in counts:
				if counts[cost] > upper_lower_bound[cost][0] and avg - counts[cost] >= 0:
					if min_diff_between_count_and_avg == -1:
						# First encounter of count that both is less than avg and has room to decrease
						min_diff_between_count_and_avg = avg - counts[cost]
						l = [cost]
						min_room_to_decrease = counts[cost] - upper_lower_bound[cost][0]
					elif avg-counts[cost] < min_diff_between_count_and_avg:
						# Find a count that is closer to avg
						# Need to update previous closest count
						prev_min = min_diff_between_count_and_avg
						min_diff_between_count_and_avg = avg - counts[cost]
						l = [cost]
						min_room_to_decrease = counts[cost] - upper_lower_bound[cost][0]
					elif avg-counts[cost] == min_diff_between_count_and_avg:
						# Find a count that is equally close to avg
						# No need to update previous closest count
						# May need to update min_room_to_decrease
						l.append(cost)
						if counts[cost] - upper_lower_bound[cost][0] < min_room_to_decrease:
							min_room_to_decrease = counts[cost] - upper_lower_bound[cost][0]

			avg_diff = int(diff/len(l))
			diff_min_second = prev_min - min_diff_between_count_and_avg

			if avg_diff == 0:
				for cost in l:
					counts[cost] -= 1
					diff -= 1
					if diff == 0:
						break
			elif prev_min == -1:
				# All counts that are smaller than avg are equal
				for cost in l:
					counts[cost] -= min(min_room_to_decrease, avg_diff)
					diff -= min(min_room_to_decrease, avg_diff)
			else:
				for cost in l:
					counts[cost] -= min(min_room_to_decrease, avg_diff, diff_min_second)
					diff -= min(min_room_to_decrease, avg_diff, diff_min_second)

	else: # need to increase
		diff = abs(diff)
		while diff != 0:
			l = []
			min_diff_between_count_and_avg = -1
			prev_min = -1
			min_room_to_increase = 0
			for cost in counts:
				if counts[cost] < upper_lower_bound[cost][1] and counts[cost] - avg >= 0:
					if min_diff_between_count_and_avg == -1:
						# First encounter of count that both is greater than avg and has room to increase
						min_diff_between_count_and_avg = counts[cost] - avg
						l = [cost]
						min_room_to_increase = upper_lower_bound[cost][1] - counts[cost]
					elif counts[cost] - avg < min_diff_between_count_and_avg:
						# Find a count that is closer to avg
						# Need to update previous closest count
						prev_min = min_diff_between_count_and_avg
						min_diff_between_count_and_avg = counts[cost] - avg
						l = [cost]
						min_room_to_increase = upper_lower_bound[cost][1] - counts[cost]
					elif counts[cost] - avg == min_diff_between_count_and_avg:
						# Find a count that is equally close to avg
						# No need to update previous closest count
						# May need to update min_room_to_decrease
						l.append(cost)
						if upper_lower_bound[cost][1] - counts[cost] < min_room_to_increase:
							min_room_to_increase = upper_lower_bound[cost][1] - counts[cost]


			avg_diff = int(diff/len(l))
			diff_min_second = prev_min - min_diff_between_count_and_avg

			if avg_diff == 0:
				for cost in l:
					counts[cost] += 1
					diff -= 1
					if diff == 0:
						break
			elif prev_min == -1:
				# All counts that are greater than avg are equal
				for cost in l:
					counts[cost] += min(min_room_to_increase, avg_diff)
					diff -= min(min_room_to_increase, avg_diff)
			else:
				for cost in l:
					counts[cost] += min(min_room_to_increase, avg_diff, diff_min_second)
					diff -= min(min_room_to_increase, avg_diff, diff_min_second)
	
	for cost in counts:
		print(cost,":",upper_lower_bound[cost],counts[cost])
		prob = counts[cost]/domain_size
		max_entropy += -1 * prob * log(prob,2)
	return max_entropy


def get_minimum_entropy_alt(observationConstraints, domain_size):
	counts = {}
	upper_lower_bound = {}
	avg = int(domain_size/len(observationConstraints))
	sum_counts = 0
	min_entropy = 0
	for cost in observationConstraints:
		lower_bound = 0
		upper_bound = 0
		for (constraint,count) in observationConstraints[cost]:
			lower_bound += count[0]
			upper_bound += count[1]
		upper_lower_bound[cost] = (lower_bound, upper_bound)
		if avg >= lower_bound and avg <= upper_bound:
			if abs(avg - lower_bound) > abs(avg - upper_bound):
				counts[cost] = lower_bound
				sum_counts += lower_bound
			else:
				counts[cost] = upper_bound
				sum_counts += upper_bound
		elif avg < lower_bound:
			counts[cost] = upper_bound
			sum_counts += upper_bound
		elif avg > upper_bound:
			counts[cost] = lower_bound
			sum_counts += lower_bound

	diff = sum_counts - domain_size
	if diff == 0:
		for cost in counts:
			prob = counts[cost]/domain_size
			min_entropy += -1 * prob * log(prob,2)
	elif diff > 0: # need to decrease
		while diff != 0:
			l = []
			min_diff_between_count_and_avg = -1
			prev_min = -1
			min_room_to_decrease = 0
			for cost in counts:
				if counts[cost] > upper_lower_bound[cost][0]:
					if min_diff_between_count_and_avg == -1:
						# First encounter of count that has room to decrease
						min_diff_between_count_and_avg = abs(avg - counts[cost])
						l = [cost]
						min_room_to_decrease = counts[cost] - upper_lower_bound[cost][0]
					elif abs(avg - counts[cost]) < min_diff_between_count_and_avg:
						# Find a count that is closer to avg
						# Need to update previous closest count
						prev_min = min_diff_between_count_and_avg
						min_diff_between_count_and_avg = abs(avg - counts[cost])
						l = [cost]
						min_room_to_decrease = counts[cost] - upper_lower_bound[cost][0]
					elif abs(avg - counts[cost]) == min_diff_between_count_and_avg:
						# Find a count that is equally close to avg
						# No need to update previous closest count
						# May need to update min_room_to_decrease
						l.append(cost)
						if counts[cost] - upper_lower_bound[cost][0] < min_room_to_decrease:
							min_room_to_decrease = counts[cost] - upper_lower_bound[cost][0]


			avg_diff = int(diff/len(l))
			diff_min_second = prev_min - min_diff_between_count_and_avg

			if avg_diff == 0:
				for cost in l:
					counts[cost] -= 1
					diff -= 1
					if diff == 0:
						break
			elif prev_min == -1:
				# All counts that are smaller than avg are equal
				for cost in l:
					counts[cost] -= min(min_room_to_decrease, avg_diff)
					diff -= min(min_room_to_decrease, avg_diff)
			else:
				for cost in l:
					counts[cost] -= min(min_room_to_decrease, avg_diff, diff_min_second)
					diff -= min(min_room_to_decrease, avg_diff, diff_min_second)

	else: # need to increase
		diff = abs(diff)
		while diff != 0:
			l = []
			min_diff_between_count_and_avg = -1
			prev_min = -1
			min_room_to_increase = 0
			for cost in counts:
				if counts[cost] < upper_lower_bound[cost][1]:
					if min_diff_between_count_and_avg == -1:
						# First encounter of count that has room to increase
						min_diff_between_count_and_avg = abs(counts[cost] - avg)
						l = [cost]
						min_room_to_increase = upper_lower_bound[cost][1] - counts[cost]
					elif abs(counts[cost] - avg) < min_diff_between_count_and_avg:
						# Find a count that is closer to avg
						# Need to update previous closest count
						prev_min = min_diff_between_count_and_avg
						min_diff_between_count_and_avg = abs(counts[cost] - avg)
						l = [cost]
						min_room_to_increase = upper_lower_bound[cost][1] - counts[cost]
					elif abs(counts[cost] - avg) == min_diff_between_count_and_avg:
						# Find a count that is equally close to avg
						# No need to update previous closest count
						# May need to update min_room_to_decrease
						l.append(cost)
						if upper_lower_bound[cost][1] - counts[cost] < min_room_to_increase:
							min_room_to_increase = upper_lower_bound[cost][1] - counts[cost]


			avg_diff = int(diff/len(l))
			diff_min_second = prev_min - min_diff_between_count_and_avg

			if avg_diff == 0:
				for cost in l:
					counts[cost] += 1
					diff -= 1
					if diff == 0:
						break
			elif prev_min == -1:
				# All counts that are greater than avg are equal
				for cost in l:
					counts[cost] += min(min_room_to_increase, avg_diff)
					diff -= min(min_room_to_increase, avg_diff)
			else:
				for cost in l:
					counts[cost] += min(min_room_to_increase, avg_diff, diff_min_second)
					diff -= min(min_room_to_increase, avg_diff, diff_min_second)
	
	for cost in counts:
		print(cost,":",upper_lower_bound[cost],counts[cost])
		prob = counts[cost]/domain_size
		min_entropy += -1 * prob * log(prob,2)
	print(min_entropy)


def get_next_neighbor(current_counts, upper_lower_bound, domain_size, current_entropy):
	max_neighbor_entropy = current_entropy
	max_neighbor = current_counts.copy()

	for i in range(len(current_counts)):
		neighbor = current_counts.copy()
		cost = current_counts[i][0]
		count = current_counts[i][1]
		if count > upper_lower_bound[cost][0]:
			dec_count = count - 1
			for j in range(i + 1, len(current_counts)):
				neighbor_cost = current_counts[j][0]
				neighbor_count = current_counts[j][1]
				if neighbor_count < upper_lower_bound[neighbor_cost][1]:
					inc_neighbor_count = neighbor_count + 1
					neighbor[i] = (cost, dec_count)
					neighbor[j] = (neighbor_cost, inc_neighbor_count)
					entropy = 0
					for k in range(len(neighbor)):
						entropy += -1 * neighbor[k][1]/domain_size * log(neighbor[k][1]/domain_size, 2)
					if entropy > max_neighbor_entropy:
						max_neighbor_entropy = entropy
						max_neighbor = neighbor.copy()
					neighbor = current_counts.copy()
		
		if count < upper_lower_bound[cost][1]:
			inc_count = count + 1
			for j in range(i + 1, len(current_counts)):
				neighbor_cost = current_counts[j][0]
				neighbor_count = current_counts[j][1]
				if neighbor_count > upper_lower_bound[neighbor_cost][0]:
					dec_neighbor_count = neighbor_count - 1
					neighbor[i] = (cost, inc_count)
					entropy = 0
					neighbor[j] = (neighbor_cost, dec_neighbor_count)
					for k in range(len(neighbor)):
						entropy += -1 * neighbor[k][1]/domain_size * log(neighbor[k][1]/domain_size, 2)
					if entropy > max_neighbor_entropy:
						max_neighbor_entropy = entropy
						max_neighbor = neighbor.copy()


	return (max_neighbor, max_neighbor_entropy)

def get_max_entropy_hill_climbing(observationConstraints, domain_size):
	
	counts = {}
	upper_lower_bound = {}
	avg = int(domain_size/len(observationConstraints))
	sum_counts = 0
	min_entropy = 0
	for cost in observationConstraints:
		lower_bound = 0
		upper_bound = 0
		for (constraint,count) in observationConstraints[cost]:
			lower_bound += count[0]
			upper_bound += count[1]
		upper_lower_bound[cost] = (lower_bound, upper_bound)
		if avg >= lower_bound and avg <= upper_bound:
			if abs(avg - lower_bound) > abs(avg - upper_bound):
				counts[cost] = lower_bound
				sum_counts += lower_bound
			else:
				counts[cost] = upper_bound
				sum_counts += upper_bound
		elif avg < lower_bound:
			counts[cost] = upper_bound
			sum_counts += upper_bound
		elif avg > upper_bound:
			counts[cost] = lower_bound
			sum_counts += lower_bound

	diff = sum_counts - domain_size
	if diff != 0:
		if diff > 0:
			for cost in counts:
				lower_bound = upper_lower_bound[cost][0]
				if counts[cost] > lower_bound:
					tmp = counts[cost]
					counts[cost] -= min(diff, counts[cost] - lower_bound)
					diff -= min(diff, tmp - lower_bound)
					if diff == 0:
						break
		if diff < 0:
			for cost in counts:
				upper_bound = upper_lower_bound[cost][1]
				if counts[cost] < upper_bound:
					tmp = counts[cost]
					counts[cost] += min(abs(diff), upper_bound - counts[cost])
					diff += min(abs(diff), upper_bound - tmp)
					if diff == 0:
						break
	assert diff == 0
	current_counts = []
	for cost in counts:
		current_counts.append((cost, counts[cost]))
	current_entropy = 0
	for i in range(len(current_counts)):
		current_entropy += -1 * current_counts[i][1]/domain_size * log(current_counts[i][1]/domain_size, 2)
	while True:
		#print("current_counts:", current_counts)
		neighbor = get_next_neighbor(current_counts, upper_lower_bound, domain_size, current_entropy)
		if neighbor[1] == current_entropy:
			max_entropy = current_entropy
			break
		current_counts = neighbor[0]
		current_entropy = neighbor[1]
	print(current_counts)
	return max_entropy



if __name__ == '__main__':
	parser = argparse.ArgumentParser("Connect KLEE with SearchMC")
	parser.add_argument("--klee_output_dir", required=True)
	parser.add_argument("--target", required=True)
	parser.add_argument("--klee_dir")
	args = parser.parse_args()
	dict_args = vars(args)
	target = dict_args["target"]
	klee_output_dir = dict_args["klee_output_dir"]
	klee_dir = ""
	if dict_args["klee_dir"] != None:
		klee_dir = dict_args["klee_dir"]
	else:
		klee_dir = "klee"

	klee_output_dir = "-output-dir=" + klee_output_dir
	klee_output_stream = subprocess.Popen([klee_dir, klee_output_dir, '-write-smt2s', target])

	#d = abc_py.Driver()
	#d.InitializeLogger(0)
	#d.set_option(abc_py.REGEX_FLAG, 0x000f)
	#d.set_option(abc_py.USE_UNSIGNED_INTEGERS)

	observationConstraints = get_observation_constraints(klee_output_dir[len('-output-dir='):])
	print(get_maximum_entropy_alt(observationConstraints, 4**8))
	#get_minimum_entropy_alt(observationConstraints, 4**8)
	print(get_max_entropy_hill_climbing(observationConstraints, 4**8))
	#print(get_maximum_and_minimun_entropy(observationConstraints, 4**8))
	#print(min_entropy, max_entropy)
