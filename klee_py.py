#!/usr/bin/env python3

import os
import math
import subprocess
#import abc_py
from collections import OrderedDict
import argparse
import random
import z3
import time
all_var_names = set()
total_size = 13
total_solving_time = 0

############################Get model counts##########################

def calculate_domain_size(directory):
	global all_var_names
	for root,_,files in os.walk(directory):
		for file in files:
			if file[-4:] == "smt2":
				abs_path = os.path.abspath(os.path.join(root, file))
				print(abs_path)
				var_names = set()
				process = subprocess.Popen(["./stp-2.1.2", "-p", "--disable-simplifications", "--disable-cbitp", "--disable-equality" ,"-a", "-w", "--output-CNF",  "--minisat", abs_path], stdout = subprocess.PIPE)
				result = process.communicate()[0].decode('utf-8')
				lines = result.split('\n');
				for line in lines:
					words = line.split()
					if len(words) > 0 and words[0] == "ASSERT(":
						all_var_names.add(words[1])
	print(all_var_names)
	print(256**len(all_var_names))
	return 256**len(all_var_names)


def model_count_SearchMC(file):
	#print(file)
	global total_solving_time
	f = open(file, "r")
	cost = f.readline()
	#var_names = f.readline()
	f.close()
	#var_names = var_names[1:].split()
	#print(cost)
	
	var_names = set()
	assert_var_names = set()

	process = subprocess.Popen(["./stp-2.1.2", "-p", "--disable-simplifications", "--disable-cbitp", "--disable-equality" ,"-a", "-w", "--output-CNF",  "--minisat", file], stdout = subprocess.PIPE)
	result = process.communicate()[0].decode('utf-8')
	#print(result)
	#print('\n\n')
	lines = result.split('\n');
	for line in lines:
		words = line.split()
		if len(words) > 0 and words[0] == "VarDump:" and not words[1].startswith("STP__IndexVariables_"):
			var_names.add(words[1])

	output_names = " "
	for var_name in var_names:
		output_names += "-output_name=" + var_name + " "
	#print(output_names)

	process = subprocess.Popen(["./SearchMC.pl", "-input_type=smt", "-cl=0.95" ,"-thres=2"] + output_names.split() + [file], stdout = subprocess.PIPE)
	result = process.communicate()[0].decode('utf-8')
	#print(result)
	lines = result.split('\n');
	upper_bound = 0
	lower_bound = 0
	for line in lines:
		l = line.split();
		if len(l) > 0:
			if l[1] == "Upper":
				upper_bound = l[-1];
				upper_bound = int(2**float(upper_bound))
				#print("Upper bound:", upper_bound)
			elif l[1] == "Lower":
				lower_bound = l[-1];
				lower_bound = int(2**float(lower_bound))
				#print("Lower bound:", lower_bound)
			elif l[1] = "Exact":
				lower_bound = int(l[-1])
				upper_bound = int(l[-1])
			elif l[1] == "Running":
				runtime = float(l[-1])
				total_solving_time += runtime
	#print("(BEFORE) Upper bound: {}, Lower bound: {}".format(upper_bound, lower_bound))
	#print("(After) Upper bound: {}, Lower bound: {}".format(upper_bound * ((2**8)**size_diff), lower_bound * ((2**8)**size_diff)))
	return (lower_bound * (2**8), upper_bound * (2**8))

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
				actual_constraint = f.read()
				f.close()
				cost = int(cost[1:])
				count = model_count_SearchMC(abs_path)
				print(all_var_names)
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

def get_upper_lower_bounds(observationConstraints):
	upper_lower_bound = dict()
	for cost in observationConstraints:
		lower_bound = 0
		upper_bound = 0
		for (constraint, count) in observationConstraints[cost]:
			lower_bound += count[0]
			upper_bound += count[1]
		upper_lower_bound[cost] = (lower_bound, upper_bound)
	return upper_lower_bound

#############################Calculate entropy#######################################


'''
def get_max_and_min_entropy_ABC(observationConstraints, domain_size):   # Deprecated because slow
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
				entropy += -1 * prob * math.log(prob,2)
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
'''

############Standard deviation method##############
def get_max_entropy_standard_deviation(upper_lower_bounds, domain_size):
	counts = {}
	avg = domain_size//len(upper_lower_bounds)
	sum_counts = 0
	max_entropy = 0
	for cost in upper_lower_bounds:
		lower_bound = upper_lower_bounds[cost][0]
		upper_bound = upper_lower_bounds[cost][1]
		if avg >= lower_bound and avg <= upper_bound:
			counts[cost] = avg
			sum_counts += avg
		elif avg < lower_bound:
			counts[cost] = lower_bound
			sum_counts += lower_bound
		elif avg > upper_bound:
			counts[cost] = upper_bound
			sum_counts += upper_bound
	#print("Upper and lower bounds: ",upper_lower_bounds)
	diff = sum_counts - domain_size
	if diff == 0:
		for cost in counts:
			prob = counts[cost]/domain_size
			max_entropy += -1 * prob * math.log(prob,2)
	elif diff > 0: # need to decrease
		while diff != 0:
			l = []
			min_diff_between_count_and_avg = -1
			second_min_diff_between_count_and_avg = -1
			min_room_to_decrease = 0
			for cost in counts:
				if counts[cost] > upper_lower_bounds[cost][0] and avg - counts[cost] >= 0:
					if min_diff_between_count_and_avg == -1:
						# First encounter of count that both is less than avg and has room to decrease
						min_diff_between_count_and_avg = avg - counts[cost]
						l = [cost]
						min_room_to_decrease = counts[cost] - upper_lower_bounds[cost][0]
					elif avg-counts[cost] < min_diff_between_count_and_avg:
						# Find a count that is closer to avg
						# Need to update previous closest count
						second_min_diff_between_count_and_avg = min_diff_between_count_and_avg
						min_diff_between_count_and_avg = avg - counts[cost]
						l = [cost]
						min_room_to_decrease = counts[cost] - upper_lower_bounds[cost][0]
					elif avg-counts[cost] == min_diff_between_count_and_avg:
						# Find a count that is equally close to avg
						# No need to update previous closest count
						# May need to update min_room_to_decrease
						l.append(cost)
						if counts[cost] - upper_lower_bounds[cost][0] < min_room_to_decrease:
							min_room_to_decrease = counts[cost] - upper_lower_bounds[cost][0]
					else:
						if second_min_diff_between_count_and_avg == -1:
							second_min_diff_between_count_and_avg = avg - counts[cost]
						else:
							if avg - counts[cost] < second_min_diff_between_count_and_avg:
								second_min_diff_between_count_and_avg = avg - counts[cost]
			if len(l) == 0:
				print("Incorrect counts given by SearchMC:",upper_lower_bounds)
			avg_diff = int(diff/len(l))
			if second_min_diff_between_count_and_avg != -1:
				diff_min_second = second_min_diff_between_count_and_avg - min_diff_between_count_and_avg
			else:
				diff_min_second = min_diff_between_count_and_avg

			if avg_diff == 0:
				for cost in l:
					counts[cost] -= 1
					diff -= 1
					if diff == 0:
						break
			elif second_min_diff_between_count_and_avg == -1:
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
			second_min_diff_between_count_and_avg = -1
			min_room_to_increase = 0
			for cost in counts:
				if counts[cost] < upper_lower_bounds[cost][1] and counts[cost] - avg >= 0:
					if min_diff_between_count_and_avg == -1:
						# First encounter of count that both is greater than avg and has room to increase
						min_diff_between_count_and_avg = counts[cost] - avg
						l = [cost]
						min_room_to_increase = upper_lower_bounds[cost][1] - counts[cost]
					elif counts[cost] - avg < min_diff_between_count_and_avg:
						# Find a count that is closer to avg
						# Need to update previous closest count
						second_min_diff_between_count_and_avg = min_diff_between_count_and_avg
						min_diff_between_count_and_avg = counts[cost] - avg
						l = [cost]
						min_room_to_increase = upper_lower_bounds[cost][1] - counts[cost]
					elif counts[cost] - avg == min_diff_between_count_and_avg:
						# Find a count that is equally close to avg
						# No need to update previous closest count
						# May need to update min_room_to_decrease
						l.append(cost)
						if upper_lower_bound[cost][1] - counts[cost] < min_room_to_increase:
							min_room_to_increase = upper_lower_bounds[cost][1] - counts[cost]
					else:
						if second_min_diff_between_count_and_avg == -1:
							second_min_diff_between_count_and_avg = counts[cost] - avg
						else:
							if counts[cost] - avg < second_min_diff_between_count_and_avg:
								second_min_diff_between_count_and_avg = counts[cost] - avg

			if len(l) == 0:
				print("Incorrect counts given by SearchMC:",upper_lower_bounds)
			avg_diff = int(diff/len(l))
			if second_min_diff_between_count_and_avg != -1:
				diff_min_second = second_min_diff_between_count_and_avg - min_diff_between_count_and_avg
			else:
				diff_min_second = min_diff_between_count_and_avg

			if avg_diff == 0:
				for cost in l:
					counts[cost] += 1
					diff -= 1
					if diff == 0:
						break
			elif second_min_diff_between_count_and_avg == -1:
				# All counts that are greater than avg are equal
				for cost in l:
					counts[cost] += min(min_room_to_increase, avg_diff)
					diff -= min(min_room_to_increase, avg_diff)
			else:
				for cost in l:
					counts[cost] += min(min_room_to_increase, avg_diff, diff_min_second)
					diff -= min(min_room_to_increase, avg_diff, diff_min_second)
	
	for cost in counts:
		#print(cost,":",upper_lower_bound[cost],counts[cost])
		prob = counts[cost]/domain_size
		max_entropy += -1 * prob * math.log(prob,2)
	#print("Standard deviation method end point:", counts)
	return max_entropy



def get_min_entropy_standard_deviation(upper_lower_bounds, domain_size):
	counts = {}
	avg = domain_size//len(upper_lower_bounds)
	sum_counts = 0
	min_entropy = 0
	for cost in upper_lower_bounds:
		lower_bound = upper_lower_bounds[cost][0]
		upper_bound = upper_lower_bounds[cost][1]
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
	#print("Initial counts:", upper_lower_bound)
	diff = sum_counts - domain_size
	if diff == 0:
		for cost in counts:
			prob = counts[cost]/domain_size
			min_entropy += -1 * prob * math.log(prob,2)
	elif diff > 0: # need to decrease
		while diff != 0:
			l = []
			min_diff_between_count_and_avg = -1
			second_min_diff_between_count_and_avg = -1
			min_room_to_decrease = 0
			for cost in counts:
				if counts[cost] > upper_lower_bounds[cost][0]:
					if min_diff_between_count_and_avg == -1:
						# First encounter of count that has room to decrease
						min_diff_between_count_and_avg = abs(avg - counts[cost])
						l = [cost]
						min_room_to_decrease = counts[cost] - upper_lower_bounds[cost][0]
					elif abs(avg - counts[cost]) < min_diff_between_count_and_avg:
						# Find a count that is closer to avg
						# Need to update previous closest count
						second_min_diff_between_count_and_avg = min_diff_between_count_and_avg
						min_diff_between_count_and_avg = abs(avg - counts[cost])
						l = [cost]
						min_room_to_decrease = counts[cost] - upper_lower_bounds[cost][0]
					elif abs(avg - counts[cost]) == min_diff_between_count_and_avg:
						# Find a count that is equally close to avg
						# No need to update previous closest count
						# May need to update min_room_to_decrease
						l.append(cost)
						if counts[cost] - upper_lower_bounds[cost][0] < min_room_to_decrease:
							min_room_to_decrease = counts[cost] - upper_lower_bounds[cost][0]
					else:
						if second_min_diff_between_count_and_avg == -1:
							second_min_diff_between_count_and_avg = abs(avg - counts[cost])
						else:
							if abs(avg - counts[cost]) < second_min_diff_between_count_and_avg:
								second_min_diff_between_count_and_avg = abs(avg - counts[cost])

			if len(l) == 0:
				print("Incorrect counts given by SearchMC:", upper_lower_bound)
			avg_diff = int(diff/len(l))
			if second_min_diff_between_count_and_avg != -1:
				diff_min_second = second_min_diff_between_count_and_avg - min_diff_between_count_and_avg
			else:
				diff_min_second = min_diff_between_count_and_avg

			if avg_diff == 0:
				for cost in l:
					counts[cost] -= 1
					diff -= 1
					if diff == 0:
						break
			elif second_min_diff_between_count_and_avg == -1:
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
			second_min_diff_between_count_and_avg = -1
			min_room_to_increase = 0
			for cost in counts:
				if counts[cost] < upper_lower_bounds[cost][1]:
					if min_diff_between_count_and_avg == -1:
						# First encounter of count that has room to increase
						min_diff_between_count_and_avg = abs(counts[cost] - avg)
						l = [cost]
						min_room_to_increase = upper_lower_bounds[cost][1] - counts[cost]
					elif abs(counts[cost] - avg) < min_diff_between_count_and_avg:
						# Find a count that is closer to avg
						# Need to update previous closest count
						second_min_diff_between_count_and_avg = min_diff_between_count_and_avg
						min_diff_between_count_and_avg = abs(counts[cost] - avg)
						l = [cost]
						min_room_to_increase = upper_lower_bounds[cost][1] - counts[cost]
					elif abs(counts[cost] - avg) == min_diff_between_count_and_avg:
						# Find a count that is equally close to avg
						# No need to update previous closest count
						# May need to update min_room_to_decrease
						l.append(cost)
						if upper_lower_bounds[cost][1] - counts[cost] < min_room_to_increase:
							min_room_to_increase = upper_lower_bounds[cost][1] - counts[cost]
					else:
						if second_min_diff_between_count_and_avg == -1:
							second_min_diff_between_count_and_avg = abs(counts[cost] - avg)
						else:
							if abs(counts[cost] - avg) < second_min_diff_between_count_and_avg:
								second_min_diff_between_count_and_avg = abs(counts[cost] - avg)

			if len(l) == 0:
				print("Incorrect counts given by SearchMC:",upper_lower_bounda)
			avg_diff = int(diff/len(l))

			if second_min_diff_between_count_and_avg != -1:
				diff_min_second = second_min_diff_between_count_and_avg - min_diff_between_count_and_avg
			else:
				diff_min_second = min_diff_between_count_and_avg

			if avg_diff == 0:
				for cost in l:
					counts[cost] += 1
					diff -= 1
					if diff == 0:
						break
			elif second_min_diff_between_count_and_avg == -1:
				# All counts that are greater than avg are equal
				for cost in l:
					counts[cost] += min(min_room_to_increase, avg_diff)
					diff -= min(min_room_to_increase, avg_diff)
			else:
				for cost in l:
					counts[cost] += min(min_room_to_increase, avg_diff, diff_min_second)
					diff -= min(min_room_to_increase, avg_diff, diff_min_second)
	
	for cost in counts:
		#print(cost,":",upper_lower_bound[cost],counts[cost])
		prob = counts[cost]/domain_size
		min_entropy += -1 * prob * math.log(prob,2)
	#print("Standard deviation method end point:", counts)
	return min_entropy


'''
def get_next_neighbor_max(current_counts, upper_lower_bound, domain_size, current_entropy): # Deprecated because slow
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
						entropy += -1 * neighbor[k][1]/domain_size * math.log(neighbor[k][1]/domain_size, 2)
					if entropy > max_neighbor_entropy:
						max_neighbor_entropy = entropy
						max_neighbor = neighbor.copy()
						return (max_neighbor, max_neighbor_entropy)
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
						entropy += -1 * neighbor[k][1]/domain_size * math.log(neighbor[k][1]/domain_size, 2)
					if entropy > max_neighbor_entropy:
						max_neighbor_entropy = entropy
						max_neighbor = neighbor.copy()
						return (max_neighbor, max_neighbor_entropy)
					neighbor = current_counts.copy()
	#print(max_neighbor)
	return (max_neighbor, max_neighbor_entropy)

def get_next_neighbor_min(current_counts, upper_lower_bound, domain_size, current_entropy):
	min_neighbor_entropy = current_entropy
	min_neighbor = current_counts.copy()

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
						entropy += -1 * neighbor[k][1]/domain_size * math.log(neighbor[k][1]/domain_size, 2)
					if entropy < min_neighbor_entropy:
						min_neighbor_entropy = entropy
						min_neighbor = neighbor.copy()
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
						entropy += -1 * neighbor[k][1]/domain_size * math.log(neighbor[k][1]/domain_size, 2)
					if entropy < min_neighbor_entropy:
						min_neighbor_entropy = entropy
						min_neighbor = neighbor.copy()
					neighbor = current_counts.copy()
	return (min_neighbor, min_neighbor_entropy)

def get_max_entropy_hill_climbing(observationConstraints, domain_size):
	
	counts = {}
	upper_lower_bound = {}
	avg = int(domain_size/len(observationConstraints))
	sum_counts = 0
	max_entropy = 0
	sum_var = 0;
	s = z3.Solver()
	var_list = {}
	for cost in observationConstraints:
		temp = z3.Int("c" + str(cost))
		lower_bound = 0
		upper_bound = 0
		for (constraint,count) in observationConstraints[cost]:
			lower_bound += count[0]
			upper_bound += count[1]
		upper_lower_bound[cost] = (lower_bound, upper_bound)
		s.add(temp >= lower_bound)
		s.add(temp <= upper_bound)
		sum_var += temp;
		var_list[cost] = temp;
	s.add(sum_var == domain_size)
	s.check()
	m = s.model();
	for cost in observationConstraints:
		counts[cost] = int(str(m[var_list[cost]]))
	current_counts = []
	for cost in counts:
		current_counts.append((cost, counts[cost]))
	#print(upper_lower_bound)
	#print("Hill climbing starting point:", current_counts)
	current_entropy = 0
	for i in range(len(current_counts)):
		current_entropy += -1 * current_counts[i][1]/domain_size * math.log(current_counts[i][1]/domain_size, 2)
	while True:
		#print("current_counts:", current_counts)
		neighbor = get_next_neighbor_max(current_counts, upper_lower_bound, domain_size, current_entropy)
		if neighbor[1] == current_entropy:
			max_entropy = current_entropy
			break
		current_counts = neighbor[0]
		current_entropy = neighbor[1]
	#print("Hill climbing end point:", current_counts)
	return max_entropy

def get_min_entropy_hill_climbing(observationConstraints, domain_size):
	
	counts = {}
	upper_lower_bound = {}
	avg = int(domain_size/len(observationConstraints))
	sum_counts = 0
	min_entropy = 0
	sum_var = 0;
	s = z3.Solver()
	var_list = {}
	for cost in observationConstraints:
		temp = z3.Int("c" + str(cost))
		lower_bound = 0
		upper_bound = 0
		for (constraint,count) in observationConstraints[cost]:
			lower_bound += count[0]
			upper_bound += count[1]
		upper_lower_bound[cost] = (lower_bound, upper_bound)
		s.add(temp >= lower_bound)
		s.add(temp <= upper_bound)
		sum_var += temp;
		var_list[cost] = temp;
	s.add(sum_var == domain_size)
	s.check()
	m = s.model();
	for cost in observationConstraints:
		counts[cost] = int(str(m[var_list[cost]]))
	current_counts = []
	for cost in counts:
		current_counts.append((cost, counts[cost]))
	#print("Hill climbing starting point:", current_counts)
	current_entropy = 0
	for i in range(len(current_counts)):
		current_entropy += -1 * current_counts[i][1]/domain_size * math.log(current_counts[i][1]/domain_size, 2)
	while True:
		#print("current_counts:", current_counts)
		neighbor = get_next_neighbor_min(current_counts, upper_lower_bound, domain_size, current_entropy)
		if neighbor[1] == current_entropy:
			min_entropy = current_entropy
			break
		current_counts = neighbor[0]
		current_entropy = neighbor[1]
	#print("Hill climbing end point:", current_counts)
	return min_entropy

'''

#################Hill climbing method (random)#####################

def get_next_neighbor_max_random(current_counts, upper_lower_bound, domain_size, current_entropy):
	max_neighbor_entropy = current_entropy
	max_neighbor = current_counts.copy()
	for i in range(40):
		diff = 0
		neighbor = current_counts.copy()
		max_upper_room = 0
		max_lower_room = 0
		for j in range(len(current_counts)):
			cost = neighbor[j][0]
			count = neighbor[j][1]
			max_upper_room += upper_lower_bound[cost][1] - count
			max_lower_room += upper_lower_bound[cost][0] - count
		for j in range(len(current_counts)):
			cost = neighbor[j][0]
			count = neighbor[j][1]
			upper_room = upper_lower_bound[cost][1] - count
			lower_room = upper_lower_bound[cost][0] - count
			if j != len(current_counts) - 1:
				change = random.randint(max(lower_room, upper_room - max_upper_room - diff), min(upper_room, lower_room - max_lower_room - diff))
				max_upper_room -= upper_room
				max_lower_room -= lower_room
				diff += change # Make sure that diff can be changed to 0
				count += change
				neighbor[j] = (cost, count)
			else:
				change = -1 * diff
				if change > upper_room or change < lower_room:
					raise ValueError
				max_upper_room -= upper_room
				max_lower_room -= lower_room
				diff += change # Make sure that diff can be changed to 0
				count += change
				neighbor[j] = (cost, count)
		assert diff == 0
		entropy = 0
		for j in range(len(neighbor)):
			entropy += -1 * neighbor[j][1]/domain_size * math.log(neighbor[j][1]/domain_size, 2)
		if entropy > max_neighbor_entropy:
			max_neighbor_entropy = entropy
			max_neighbor = neighbor.copy()
	return (max_neighbor, max_neighbor_entropy)

def get_next_neighbor_min_random(current_counts, upper_lower_bound, domain_size, current_entropy):
	max_neighbor_entropy = current_entropy
	max_neighbor = current_counts.copy()
	for i in range(40):
		diff = 0
		neighbor = current_counts.copy()
		max_upper_room = 0
		max_lower_room = 0
		for j in range(len(current_counts)):
			cost = neighbor[j][0]
			count = neighbor[j][1]
			max_upper_room += upper_lower_bound[cost][1] - count
			max_lower_room += upper_lower_bound[cost][0] - count
		for j in range(len(current_counts)):
			cost = neighbor[j][0]
			count = neighbor[j][1]
			upper_room = upper_lower_bound[cost][1] - count
			lower_room = upper_lower_bound[cost][0] - count
			if j != len(current_counts) - 1:
				change = random.randint(max(lower_room, upper_room - max_upper_room - diff), min(upper_room, lower_room - max_lower_room - diff))
				max_upper_room -= upper_room
				max_lower_room -= lower_room
				diff += change # Make sure that diff can be changed to 0
				count += change
				neighbor[j] = (cost, count)
			else:
				change = -1 * diff
				if change > upper_room or change < lower_room:
					print(neighbor)
					raise ValueError
				max_upper_room -= upper_room
				max_lower_room -= lower_room
				diff += change # Make sure that diff can be changed to 0
				count += change
				neighbor[j] = (cost, count)
		entropy = 0
		for j in range(len(neighbor)):
			entropy += -1 * neighbor[j][1]/domain_size * math.log(neighbor[j][1]/domain_size, 2)
		if entropy < max_neighbor_entropy:
			max_neighbor_entropy = entropy
			max_neighbor = neighbor.copy()
	return (max_neighbor, max_neighbor_entropy)


def get_max_entropy_hill_climbing_random(upper_lower_bound, domain_size):
	counts = {}
	sum_counts = 0
	max_entropy = 0
	sum_var = 0;
	s = z3.Solver()
	var_list = {}
	for cost in upper_lower_bound:
		temp = z3.Int("c" + str(cost))
		lower_bound = upper_lower_bound[cost][0]
		upper_bound = upper_lower_bound[cost][1]
		s.add(temp >= lower_bound)
		s.add(temp <= upper_bound)
		sum_var += temp;
		var_list[cost] = temp;
	s.add(sum_var == domain_size)
	s.check()
	m = s.model();
	for cost in upper_lower_bound:
		counts[cost] = int(str(m[var_list[cost]]))
	current_counts = []
	for cost in counts:
		current_counts.append((cost, counts[cost]))
	#print(upper_lower_bound)
	#print("Hill climbing starting point:", current_counts)
	current_entropy = 0
	for i in range(len(current_counts)):
		current_entropy += -1 * current_counts[i][1]/domain_size * math.log(current_counts[i][1]/domain_size, 2)
	while True:
		#print("current_counts:", current_counts)
		neighbor = get_next_neighbor_max_random(current_counts, upper_lower_bound, domain_size, current_entropy)
		if neighbor[1] == current_entropy:
			max_entropy = current_entropy
			break
		current_counts = neighbor[0]
		current_entropy = neighbor[1]
	#print("Hill climbing end point:", current_counts)
	return max_entropy


def get_min_entropy_hill_climbing_random(upper_lower_bound, domain_size):
	counts = {}
	sum_counts = 0
	min_entropy = 0
	sum_var = 0;
	s = z3.Solver()
	var_list = {}
	for cost in upper_lower_bound:
		temp = z3.Int("c" + str(cost))
		lower_bound = upper_lower_bound[cost][0]
		upper_bound = upper_lower_bound[cost][1]
		s.add(temp >= lower_bound)
		s.add(temp <= upper_bound)
		sum_var += temp;
		var_list[cost] = temp;
	s.add(sum_var == domain_size)
	s.check()
	m = s.model();
	for cost in upper_lower_bound:
		counts[cost] = int(str(m[var_list[cost]]))
	current_counts = []
	for cost in counts:
		current_counts.append((cost, counts[cost]))
	#print(upper_lower_bound)
	#print("Hill climbing starting point:", current_counts)
	current_entropy = 0
	for i in range(len(current_counts)):
		current_entropy += -1 * current_counts[i][1]/domain_size * math.log(current_counts[i][1]/domain_size, 2)
	while True:
		#print("current_counts:", current_counts)
		neighbor = get_next_neighbor_min_random(current_counts, upper_lower_bound, domain_size, current_entropy)
		if neighbor[1] == current_entropy:
			min_entropy = current_entropy
			break
		current_counts = neighbor[0]
		current_entropy = neighbor[1]
	#print("Hill climbing end point:", current_counts)
	return min_entropy


#===========================Simulated annealing method======================#

def get_one_neighbor(current_counts, upper_lower_bound, domain_size):
	diff = 0
	neighbor = current_counts.copy()
	max_upper_room = 0
	max_lower_room = 0
	for j in range(len(current_counts)):
		cost = neighbor[j][0]
		count = neighbor[j][1]
		max_upper_room += upper_lower_bound[cost][1] - count
		max_lower_room += upper_lower_bound[cost][0] - count
	for j in range(len(current_counts)):
		cost = neighbor[j][0]
		count = neighbor[j][1]
		upper_room = upper_lower_bound[cost][1] - count
		lower_room = upper_lower_bound[cost][0] - count
		if j != len(current_counts) - 1:
			change = random.randint(max(lower_room, upper_room - max_upper_room - diff), min(upper_room, lower_room - max_lower_room - diff))
			max_upper_room -= upper_room
			max_lower_room -= lower_room
			diff += change # Make sure that diff can be changed to 0
			count += change
			neighbor[j] = (cost, count)
		else:
			change = -1 * diff
			if change > upper_room or change < lower_room:
				raise ValueError
			max_upper_room -= upper_room
			max_lower_room -= lower_room
			diff += change # Make sure that diff can be changed to 0
			count += change
			neighbor[j] = (cost, count)
	entropy = 0
	for j in range(len(neighbor)):
		entropy += -1 * neighbor[j][1]/domain_size * math.log(neighbor[j][1]/domain_size, 2)
	return (neighbor, entropy)

def get_max_entropy_SA(upper_lower_bounds, domain_size):
	counts = {}
	sum_var = 0;
	s = z3.Solver()
	var_list = {}
	for cost in upper_lower_bounds:
		temp = z3.Int("c" + str(cost))
		lower_bound = upper_lower_bounds[cost][0]
		upper_bound = upper_lower_bounds[cost][1]
		s.add(temp >= lower_bound)
		s.add(temp <= upper_bound)
		sum_var += temp;
		var_list[cost] = temp;
	s.add(sum_var == domain_size)
	s.check()
	m = s.model();
	for cost in upper_lower_bounds:
		counts[cost] = int(str(m[var_list[cost]]))
	current_counts = []
	for cost in counts:
		current_counts.append((cost, counts[cost]))

	#print("Simulated Annealing starting point:", current_counts)

	temp = 10
	coolingRate = 0.1
	current_entropy = 0
	for i in range(len(current_counts)):
		current_entropy += -1 * current_counts[i][1]/domain_size * math.log(current_counts[i][1]/domain_size, 2)
	while temp > 0.0001:
		neighbor = get_one_neighbor(current_counts, upper_lower_bounds, domain_size)
		#print(neighbor)
		neighbor_counts = neighbor[0]
		neighbor_entropy = neighbor[1]
		acceptance_prob = 0
		if neighbor_entropy > current_entropy:
			acceptance_prob = 1
		else:
			acceptance_prob = math.exp((neighbor_entropy - current_entropy) / temp)
		random_val = random.random()
		if acceptance_prob >= random_val:
			current_counts = neighbor_counts
			current_entropy = neighbor_entropy
		temp *= 1 - coolingRate
	#print("Simulated Annealing end point:", current_counts)
	return current_entropy

def get_min_entropy_SA(upper_lower_bounds, domain_size):
	counts = {}
	sum_var = 0;
	s = z3.Solver()
	var_list = {}
	for cost in upper_lower_bounds:
		temp = z3.Int("c" + str(cost))
		lower_bound = upper_lower_bounds[cost][0]
		upper_bound = upper_lower_bounds[cost][1]
		s.add(temp >= lower_bound)
		s.add(temp <= upper_bound)
		sum_var += temp;
		var_list[cost] = temp;
	s.add(sum_var == domain_size)
	s.check()
	m = s.model();
	for cost in upper_lower_bounds:
		counts[cost] = int(str(m[var_list[cost]]))
	current_counts = []
	for cost in counts:
		current_counts.append((cost, counts[cost]))
	temp = 10
	coolingRate = 0.1
	current_entropy = 0
	for i in range(len(current_counts)):
		current_entropy += -1 * current_counts[i][1]/domain_size * math.log(current_counts[i][1]/domain_size, 2)
	while temp > 0.00001:
		neighbor = get_one_neighbor(current_counts, upper_lower_bounds, domain_size)
		neighbor_counts = neighbor[0]
		neighbor_entropy = neighbor[1]
		acceptance_prob = 0
		if neighbor_entropy < current_entropy:
			acceptance_prob = 1
		else:
			acceptance_prob = math.exp((current_entropy - neighbor_entropy) / temp)
		random_val = random.random()
		if acceptance_prob >= random_val:
			current_counts = neighbor_counts
			current_entropy = neighbor_entropy
		temp *= 1 - coolingRate
	#print("Simulated Annealing end point:", current_counts)
	return current_entropy

if __name__ == '__main__':
	start_time = time.time()
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
	SearchMCFail = 0
	stddev_hill_mismatch = 0
	#domain_size = (2**8)**total_size;
	domain_size = calculate_domain_size(klee_output_dir[len('-output-dir='):])
	stddev_max_list = []
	stddev_min_list = []
	hill_max_list = []
	hill_min_list = []
	time_list = []
	while len(stddev_max_list) != 3:
		start_time = time.time()
		try:
			observationConstraints = get_observation_constraints(klee_output_dir[len('-output-dir='):])
			upper_lower_bounds = get_upper_lower_bounds(observationConstraints)
			#print(get_maximum_entropy_alt(observationConstraints, 4**8))
			#get_minimum_entropy_alt(observationConstraints, 4**8)
			#print(get_max_entropy_hill_climbing(observationConstraints, 4**8))
			#print(get_max_entropy_SA(observationConstraints, 4**8))
			#print(get_maximum_and_minimun_entropy(observationConstraints, 4**8))
			#print(min_entropy, max_entropy)
			max_entropy_stddev = get_max_entropy_standard_deviation(upper_lower_bounds, domain_size)
			min_entropy_stddev = get_min_entropy_standard_deviation(upper_lower_bounds, domain_size)
			print("Max entropy (stddev): {}, Min entropy (stddev): {}".format(max_entropy_stddev, min_entropy_stddev))
			#print(max_entropy_stddev, min_entropy_stddev)
			#print(get_max_entropy_hill_climbing(observationConstraints, domain_size))
			max_entropy_hill = get_max_entropy_hill_climbing_random(upper_lower_bounds, domain_size)
			min_entropy_hill = get_min_entropy_hill_climbing_random(upper_lower_bounds, domain_size)
			print("Max entropy (hill climbing): {}, Min entropy (hill climbing): {}".format(max_entropy_hill, min_entropy_hill))

			max_entropy_SA = get_max_entropy_SA(upper_lower_bounds, domain_size)
			min_entropy_SA = get_min_entropy_SA(upper_lower_bounds, domain_size)
			print("Max entropy (SA): {}, Min entropy (SA): {}".format(max_entropy_SA, min_entropy_SA))

			stddev_max_list.append(max_entropy_stddev)
			stddev_min_list.append(min_entropy_stddev)

			#hill_max_list.append(max_entropy_hill)
			#hill_min_list.append(min_entropy_hill)

			#print('\n')
			end_time = time.time()
			time_list.append(end_time - start_time)
			print(end_time - start_time, "s")
			print('\n')
		except ZeroDivisionError:
			SearchMCFail+=1
		except ValueError:
			SearchMCFail+=1
		
	print("SearchMCFail", SearchMCFail)
	#print("stddev_hill_mismatch", stddev_hill_mismatch)
	print("Avg Max (stddev): {} Avg Min (stddev): {}".format(sum(stddev_max_list)/3, sum(stddev_min_list)/3))
	#print("Avg Max (hill): {} Avg Min (hill): {}".format(sum(hill_max_list)/3, sum(hill_min_list)/3))
	print("Avg time: {}".format(sum(time_list)/3))
	print("Avg solving time: {}".format(total_solving_time))