#!/usr/bin/env python3

import os
import math
import subprocess
import argparse
import random
import z3
import time
import pyparma
from scipy.optimize import minimize
from fractions import Fraction
import numpy as np
import cvxpy as cp

all_var_names = set()
total_solving_time = 0

############################Get model counts##########################

def calculate_domain_size_ABC(directory):
	max_num_var = 0
	for root,_,files in os.walk(directory):
		for file in files:
			if file[-4:] == "smt2":
				abs_path = os.path.abspath(os.path.join(root, file))
				f = open(abs_path, "r")
				cons = f.read();
				f.close()

				cons = cons.split("----")[0]

				num_var = cons.count("declare-fun")
				print(num_var)
				if num_var > max_num_var:
					max_num_var = num_var
	print(max_num_var)
	return (2**8) ** max_num_var

'''	
	dom_cons = cons.split("(assert ")[0] + "(check-sat)"
	dom_abs_path = os.path.abspath(os.path.join(root, "domain.smt2"))
	f = open(dom_abs_path,"w")
	f.write(dom_cons)
	f.close()
	
	process = subprocess.Popen(["abc", "-i", dom_abs_path, "-bi", "8"], stdout = subprocess.PIPE)
	result = process.communicate()[0].decode('utf-8')
	process.terminate()
	#print(result)
	count = 0
	lines = result.split('\n');
	#for line in lines:
	#	if "report bound: " in line and "count: " in line:
	#		count = int(line.split("count: ")[1].split(" ")[0])
	if lines[0] == "sat":
		count = int(lines[1])
		print("Domain count: ", count)

	return count
'''

def model_count_ABC(file, domain_size):
	global all_var_names
	global total_solving_time

	lower_bound = 0
	upper_bound = 0

	f = open(file, "r")
	bound_cons = f.read();
	f.close()

	bound_cons_arr = bound_cons.split("----")
	upper_bound_cons = bound_cons_arr[0]
	lower_bound_cons = bound_cons_arr[1]

	f = open("temp_lower_bound_cons.smt2","w")
	f.write(lower_bound_cons)
	f.close()

	f = open("temp_upper_bound_cons.smt2","w")
	f.write(upper_bound_cons)
	f.close()

	#upper_bound
	process = subprocess.Popen(["abc", "-i", "temp_upper_bound_cons.smt2", "-bi", "8", "-v", "0", "--disable-equivalence", "--precise"], stdout = subprocess.PIPE)
	result = process.communicate()[0].decode('utf-8')
	process.terminate()
	#print(result)
	lines = result.split('\n');

	print(lines)
	
	if lines[0] == "sat":
		upper_bound = int(lines[1])
		print("Model count upper bound: ", upper_bound)

	#lower_bound
	process = subprocess.Popen(["abc", "-i", "temp_lower_bound_cons.smt2", "-bi", "8", "-v", "0", "--disable-equivalence", "--precise"], stdout = subprocess.PIPE)
	result = process.communicate()[0].decode('utf-8')
	process.terminate()
	#print(result)
	lines = result.split('\n');
	
	if lines[0] == "sat":
		count = int(lines[1])
		lower_bound = domain_size - count
		print(count)
		print(domain_size)
		print("Model count lower bound: ", lower_bound)

	#os.remove("temp_lower_bound_cons.smt2")
	#os.remove("temp_upper_bound_cons.smt2")
			
	return(lower_bound, upper_bound)

def collect_variables(directory):
	all_var_names = set()
	for root,_,files in os.walk(directory):
		for file in files:
			if file[-4:] == "smt2":
				abs_path = os.path.abspath(os.path.join(root, file))
				#print(abs_path)
				var_names = set()
				process = subprocess.Popen(["./stp-2.1.2", "-p", "--disable-simplifications", "--disable-cbitp", "--disable-equality" ,"-a", "-w", "--output-CNF",  "--minisat", abs_path], stdout = subprocess.PIPE)
				result = process.communicate()[0].decode('utf-8')
				process.terminate()
				lines = result.split('\n');
				for line in lines:
					words = line.split()
					if len(words) > 0 and words[0] == "ASSERT(":
						all_var_names.add(words[1])
	return all_var_names

def get_obs_SearchMC(file):
	process = subprocess.Popen(["./stp-2.1.2", "-p", "--disable-simplifications", "--disable-cbitp", "--disable-equality" ,"-a", "-w", "--output-CNF",  "--minisat", file], stdout = subprocess.PIPE)
	result = process.communicate()[0].decode('utf-8')
	process.terminate()
	print(result)
	lines = result.split('\n');
	for line in lines:
		if "ASSERT" in line and "a[0x00000000]" in line and " = " in line and " )" in line:
			return line.split(" = ")[1].split(" )")[0]
	return ""



def model_count_SearchMC(file, domain_size, flag_explicit_domain):
	global all_var_names
	global total_solving_time
	#f = open(file, "r")
	#cost = f.readline()
	#og_constraint = f.read()
	#f.close()
	#constraint_lines = og_constraint.split('\n')
	#new_constraint_lines = []
	#for i in range(len(constraint_lines)):
		#print(constraint_lines[i])
	#	new_constraint_lines.append(constraint_lines[i])
	#	if constraint_lines[i].startswith("(declare-fun") and not constraint_lines[i + 1].startswith("(declare-fun") and "pad" not in constraint_lines[1]:
	#		new_constraint_lines.append("(declare-fun pad () (_ BitVec 8) )")
	#	elif constraint_lines[i].startswith("(assert") and not constraint_lines[i + 1].startswith("(assert") and "pad" not in constraint_lines[1]:
	#		new_constraint_lines.append("(assert ( = (_ bv0 8) pad ) ) ")
	#new_constraint = "\n".join(new_constraint_lines)
	#f = open(file, "w")
	#f.write(new_constraint)
	#f.close()
	var_names = set()
	assert_var_names = set()
	process = subprocess.Popen(["./stp-2.1.2", "-p", "--disable-simplifications", "--disable-cbitp", "--disable-equality" ,"-a", "--minisat", file], stdout = subprocess.PIPE)
	result = process.communicate()[0].decode('utf-8')
	process.terminate()
	#print(result)
	lines = result.split('\n');
	for line in lines:
		words = line.split()
		if len(words) > 0 and words[0] == "VarDump:" and not words[1].startswith("STP__IndexVariables_"):
			var_names.add(words[1])
	output_names = " "
	for var_name in var_names:
		output_names += "-output_name=" + var_name + " "
	print(output_names)
	process = subprocess.Popen(["./SearchMC.pl", "-input_type=smt", "-cl=0.95" ,"-thres=0.5"] + output_names.split() + [file], stdout = subprocess.PIPE)
	result = process.communicate()[0].decode('utf-8')
	process.terminate()
	lines = result.split('\n')
	#f = open(file, "w")
	#f.write(og_constraint)
	#f.close()
	upper_bound = 0
	lower_bound = 0
	for line in lines:
		l = line.split();
		if len(l) > 0:
			if l[1] == "Sound" and l[2] == "Upper":
				upper_bound = l[-3]
				upper_bound = int(2**float(upper_bound))
			if l[1] == "Sound" and l[2] == "Lower":
				lower_bound = l[-3]
				lower_bound = int(2**float(lower_bound))
			elif l[1] == "Exact":
				lower_bound = int(l[-1])
				upper_bound = int(l[-1])
			elif l[1] == "Running":
				runtime = float(l[-1])
				total_solving_time += runtime
	#print(og_constraint)
	#print(var_names)
	#if "pad" in var_names:
	#	var_names.remove("pad")
	#print(len(all_var_names))
	#print(len(var_names))
	return (lower_bound * ((2 ** 8) ** (len(all_var_names) - len(var_names))), upper_bound * ((2 ** 8) ** (len(all_var_names) - len(var_names))))



def get_observation_constraints(directory, tool, domain_size, flag_explicit_domain):
	observationConstraints = {}
	for root,_,files in os.walk(directory):
		for file in files:
			if file[-4:] == "smt2" and "domain" not in file:
				abs_path = os.path.abspath(os.path.join(root, file))
				f = open(abs_path, "r")
				cost = f.readline()
				actual_constraint = f.read()
				f.close()
				cost = int(cost[1:])
				print(cost)
				#print(abs_path)
				#c = get_obs_SearchMC(abs_path)
				#if c != "":
				#	cost = int(c, 16)
				#else:
				#	cost = 0
				if tool == "searchMC":
					count = model_count_SearchMC(abs_path, domain_size, flag_explicit_domain)
				else:
					count = model_count_ABC(abs_path, domain_size)
				#print(all_var_names)
				print("Count:", count)
				if cost in observationConstraints:
					observationConstraints[cost].append((actual_constraint, count))
				else:
					observationConstraints[cost] = [(actual_constraint, count)]

	#print("Number of observations: ", len(observationConstraints))
	if not bool(observationConstraints):
		print("No leakage")
	else:
		threshold = 6
		costs = sorted(observationConstraints.keys())
		currentInterval = list(costs)[0]
		pathConditions = observationConstraints[currentInterval]

		
		for currentCost in sorted(observationConstraints.copy().keys()):
			#print("current cost: ", currentCost)
			#print("current interval: ", currentInterval)
			if currentCost > currentInterval and currentCost < currentInterval + threshold:
				pathConditions += observationConstraints[currentCost]
				observationConstraints.pop(currentCost)
				observationConstraints[currentInterval] = pathConditions
				#print("merged")
			else:
				currentInterval = currentCost
				pathConditions = observationConstraints[currentInterval]

	return observationConstraints

def get_upper_lower_bounds(observationConstraints):
	upper_lower_bounds = dict()
	for cost in observationConstraints:
		lower_bound = 0
		upper_bound = 0
		for (constraint, count) in observationConstraints[cost]:
			lower_bound += count[0]
			upper_bound += count[1]
		upper_lower_bounds[cost] = (lower_bound, upper_bound)
	return upper_lower_bounds

#############################Calculate entropy#######################################

############Standard deviation method##############
def get_max_entropy_standard_deviation(upper_lower_bounds, domain_size):
	print("Domain Size: ", domain_size)
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
		return (counts, max_entropy)
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
						if upper_lower_bounds[cost][1] - counts[cost] < min_room_to_increase:
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
		#print(cost,":", counts[cost], domain_size)
		prob = counts[cost]/domain_size
		#print(cost,":", counts[cost], domain_size, -1 * prob * math.log(prob,2))
		max_entropy += -1 * prob * math.log(prob,2)
	#print("res: ",max_entropy)
	#print("Standard deviation method end point:", counts)
	return (counts, max_entropy)



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
				print("Incorrect counts given by SearchMC:", upper_lower_bounds)
			avg_diff = diff//len(l)
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
				print("Incorrect counts given by SearchMC:",upper_lower_bounds)
			avg_diff = diff//len(l)

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
	return (counts, min_entropy)

#################Hill climbing method (deterministic)#####################

def get_next_neighbor_max_deterministic(current_counts, upper_lower_bounds, domain_size, current_entropy):
	max_neighbor_entropy = current_entropy
	max_neighbor = current_counts.copy()

	for i in range(len(current_counts)):
		neighbor = current_counts.copy()
		cost = current_counts[i][0]
		count = current_counts[i][1]
		if count > upper_lower_bounds[cost][0]:
			dec_count = count - 1
			for j in range(i + 1, len(current_counts)):
				neighbor_cost = current_counts[j][0]
				neighbor_count = current_counts[j][1]
				if neighbor_count < upper_lower_bounds[neighbor_cost][1]:
					inc_neighbor_count = neighbor_count + 1
					neighbor[i] = (cost, dec_count)
					neighbor[j] = (neighbor_cost, inc_neighbor_count)
					entropy = 0
					for k in range(len(neighbor)):
						entropy += -1 * neighbor[k][1]/domain_size * math.log(neighbor[k][1]/domain_size, 2)
					if entropy > max_neighbor_entropy:
						max_neighbor_entropy = entropy
						max_neighbor = neighbor.copy()
						#return (max_neighbor, max_neighbor_entropy)
					neighbor = current_counts.copy()
		
		if count < upper_lower_bounds[cost][1]:
			inc_count = count + 1
			for j in range(i + 1, len(current_counts)):
				neighbor_cost = current_counts[j][0]
				neighbor_count = current_counts[j][1]
				if neighbor_count > upper_lower_bounds[neighbor_cost][0]:
					dec_neighbor_count = neighbor_count - 1
					neighbor[i] = (cost, inc_count)
					entropy = 0
					neighbor[j] = (neighbor_cost, dec_neighbor_count)
					for k in range(len(neighbor)):
						entropy += -1 * neighbor[k][1]/domain_size * math.log(neighbor[k][1]/domain_size, 2)
					if entropy > max_neighbor_entropy:
						max_neighbor_entropy = entropy
						max_neighbor = neighbor.copy()
						#return (max_neighbor, max_neighbor_entropy)
					neighbor = current_counts.copy()
	#print(max_neighbor)
	return (max_neighbor, max_neighbor_entropy)

def get_max_entropy_hill_climbing_deterministic(upper_lower_bounds, domain_size):
	current_counts_dict, current_entropy = get_max_entropy_standard_deviation(upper_lower_bounds, domain_size)
	current_counts = []
	for cost in current_counts_dict:
		current_counts.append((cost, current_counts_dict[cost]))

	while True:
		#print("current_counts:", current_counts)
		neighbor = get_next_neighbor_max_deterministic(current_counts, upper_lower_bounds, domain_size, current_entropy)
		if neighbor[1] <= current_entropy:
			max_entropy = current_entropy
			break
		current_counts = neighbor[0]
		current_entropy = neighbor[1]
	#print("Hill climbing end point:", current_counts)
	curr_counts_dict = {}
	for cost, counts in current_counts:
		current_counts_dict[cost] = counts
	return (current_counts_dict, max_entropy)

def get_next_neighbor_min_deterministic(current_counts, upper_lower_bounds, domain_size, current_entropy):
	min_neighbor_entropy = current_entropy
	min_neighbor = current_counts.copy()

	for i in range(len(current_counts)):
		neighbor = current_counts.copy()
		cost = current_counts[i][0]
		count = current_counts[i][1]
		if count > upper_lower_bounds[cost][0]:
			dec_count = count - 1
			for j in range(i + 1, len(current_counts)):
				neighbor_cost = current_counts[j][0]
				neighbor_count = current_counts[j][1]
				if neighbor_count < upper_lower_bounds[neighbor_cost][1]:
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
		
		if count < upper_lower_bounds[cost][1]:
			inc_count = count + 1
			for j in range(i + 1, len(current_counts)):
				neighbor_cost = current_counts[j][0]
				neighbor_count = current_counts[j][1]
				if neighbor_count > upper_lower_bounds[neighbor_cost][0]:
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

def get_min_entropy_hill_climbing_deterministic(upper_lower_bound, domain_size):
	current_counts_dict, current_entropy = get_max_entropy_standard_deviation(upper_lower_bounds, domain_size)
	current_counts = []
	for cost in current_counts_dict:
		current_counts.append((cost, current_counts_dict[cost]))

	while True:
		#print("current_counts:", current_counts)
		neighbor = get_next_neighbor_min_deterministic(current_counts, upper_lower_bound, domain_size, current_entropy)
		if neighbor[1] >= current_entropy:
			min_entropy = current_entropy
			break
		current_counts = neighbor[0]
		current_entropy = neighbor[1]
	#print("Hill climbing end point:", current_counts)
	curr_counts_dict = {}
	for cost, counts in current_counts:
		current_counts_dict[cost] = counts
	return (current_counts_dict, min_entropy)

'''
#################Hill climbing method (random)#####################
def get_next_neighbor_max_random(current_counts, upper_lower_bounds, domain_size, current_entropy):
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
			max_upper_room += upper_lower_bounds[cost][1] - count
			max_lower_room += upper_lower_bounds[cost][0] - count
		for j in range(len(current_counts)):
			cost = neighbor[j][0]
			count = neighbor[j][1]
			upper_room = upper_lower_bounds[cost][1] - count
			lower_room = upper_lower_bounds[cost][0] - count
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

def get_next_neighbor_min_random(current_counts, upper_lower_bounds, domain_size, current_entropy):
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
			max_upper_room += upper_lower_bounds[cost][1] - count
			max_lower_room += upper_lower_bounds[cost][0] - count
		for j in range(len(current_counts)):
			cost = neighbor[j][0]
			count = neighbor[j][1]
			upper_room = upper_lower_bounds[cost][1] - count
			lower_room = upper_lower_bounds[cost][0] - count
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
					#print(neighbor)
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


def get_max_entropy_hill_climbing_random(upper_lower_bounds, domain_size):
	counts = {}
	sum_counts = 0
	max_entropy = 0
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
	#print(upper_lower_bound)
	#print("Hill climbing starting point:", current_counts)
	current_entropy = 0
	for i in range(len(current_counts)):
		current_entropy += -1 * current_counts[i][1]/domain_size * math.log(current_counts[i][1]/domain_size, 2)
	while True:
		#print("current_counts:", current_counts)
		neighbor = get_next_neighbor_max_random(current_counts, upper_lower_bounds, domain_size, current_entropy)
		if neighbor[1] == current_entropy:
			max_entropy = current_entropy
			break
		current_counts = neighbor[0]
		current_entropy = neighbor[1]
	#print("Hill climbing end point:", current_counts)
	max_entropy_point = {}
	for i in range(len(current_counts)):
		max_entropy_point[current_counts[i][0]] = current_counts[i][1]
	return (max_entropy_point, max_entropy)


def get_min_entropy_hill_climbing_random(upper_lower_bounds, domain_size):
	counts = {}
	sum_counts = 0
	min_entropy = 0
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
	#print(upper_lower_bound)
	#print("Hill climbing starting point:", current_counts)
	current_entropy = 0
	for i in range(len(current_counts)):
		current_entropy += -1 * current_counts[i][1]/domain_size * math.log(current_counts[i][1]/domain_size, 2)
	while True:
		#print("current_counts:", current_counts)
		neighbor = get_next_neighbor_min_random(current_counts, upper_lower_bounds, domain_size, current_entropy)
		if neighbor[1] == current_entropy:
			min_entropy = current_entropy
			break
		current_counts = neighbor[0]
		current_entropy = neighbor[1]
	#print("Hill climbing end point:", current_counts)
	min_entropy_point = {}
	for i in range(len(current_counts)):
		min_entropy_point[current_counts[i][0]] = current_counts[i][1]
	return (min_entropy_point, min_entropy)
'''

#===========================Simulated annealing method======================#

def get_one_neighbor(current_counts, upper_lower_bounds, domain_size):
	diff = 0
	neighbor = current_counts.copy()
	max_upper_room = 0
	max_lower_room = 0
	for j in range(len(current_counts)):
		cost = neighbor[j][0]
		count = neighbor[j][1]
		max_upper_room += upper_lower_bounds[cost][1] - count
		max_lower_room += upper_lower_bounds[cost][0] - count
	for j in range(len(current_counts)):
		cost = neighbor[j][0]
		count = neighbor[j][1]
		upper_room = upper_lower_bounds[cost][1] - count
		lower_room = upper_lower_bounds[cost][0] - count
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
	max_entropy_point = {}
	for i in range(len(current_counts)):
		max_entropy_point[current_counts[i][0]] = current_counts[i][1]
	return (max_entropy_point,current_entropy)

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
	min_entropy_point = {}
	for i in range(len(current_counts)):
		min_entropy_point[current_counts[i][0]] = current_counts[i][1]
	return (min_entropy_point, current_entropy)





#===========================Concave optimization method======================#

def shannon_entropy(probabilities):
	entropy = 0
	for p in probabilities:
		entropy += -1 * math.log(p, 2) * p
	return entropy

def negative_shannon_entropy(probabilities):
	neg_entropy = 0
	for p in probabilities:
		neg_entropy += math.log(p, 2) * p
	return neg_entropy

def constraint_on_sum(probabilities):
	res = 0
	for p in probabilities:
		res += p
	return res - 1;

def get_max_entropy_SLSQP(upper_lower_bounds, domain_size):
	initial_guess = []
	s = z3.Solver()
	var_list = {}
	sum_var = 0
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
	z3_model = s.model();

	upper_lower_bound_prob = list()
	cost_list = list()
	for cost, bounds in upper_lower_bounds.items():
		upper_lower_bound_prob.append((bounds[0]/domain_size, bounds[1]/domain_size))
		cost_list.append(cost)
		initial_guess.append(int(str(z3_model[var_list[cost]]))/domain_size)
	
	cons = [{'type':'eq', 'fun':constraint_on_sum}]

	res = minimize(negative_shannon_entropy, initial_guess, method='SLSQP', bounds = upper_lower_bound_prob, constraints = cons)

	max_entropy_point = {}
	for i in range(len(cost_list)):
		max_entropy_point[cost_list[i]] = int(round(res.x[i] * domain_size))

	return (max_entropy_point, -1 * res.fun)

def get_max_entropy_CVXPY(upper_lower_bounds, domain_size):
	upper_lower_bounds_list = []
	for cost in upper_lower_bounds:
		upper_lower_bounds_list.append((cost, upper_lower_bounds[cost]))

	probs = cp.Variable(len(upper_lower_bounds))
	matrix = np.zeros((2 * len(upper_lower_bounds), len(upper_lower_bounds)))
	vec = np.zeros(2 * len(upper_lower_bounds))
	for i in range(len(upper_lower_bounds_list)):
		matrix[i * 2, i] = 1
		vec[i * 2] = upper_lower_bounds_list[i][1][1]/domain_size
		matrix[i * 2 + 1, i] = -1
		vec[i * 2 + 1] = -1 * upper_lower_bounds_list[i][1][0]/domain_size

	domain_vec = np.ones(len(upper_lower_bounds))

	objective = cp.Maximize(cp.sum(cp.entr(probs)))
	constraints = [matrix @ probs <= vec, domain_vec @ probs == 1]

	problem = cp.Problem(objective, constraints)
	max_entropy = problem.solve()
	assert(problem.status == 'optimal')
	max_entropy = 0
	max_entropy_point = {}

	for i in range(len(probs.value)):
		max_entropy += -1 * probs.value[i] * math.log(probs.value[i],2)
		max_entropy_point[upper_lower_bounds_list[i][0]] = int(round(probs.value[i] * domain_size))
	return (max_entropy_point, max_entropy)

def get_min_entropy_SLSQP(upper_lower_bounds, domain_size):
	initial_guess = []
	s = z3.Solver()
	var_list = {}
	sum_var = 0
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
	z3_model = s.model();

	upper_lower_bound_prob = list()
	for cost, bounds in upper_lower_bounds.items():
		upper_lower_bound_prob.append((bounds[0]/domain_size, bounds[1]/domain_size))
		initial_guess.append(int(str(z3_model[var_list[cost]]))/domain_size)
	
	cons = [{'type':'eq', 'fun':constraint_on_sum}]

	res = minimize(shannon_entropy, initial_guess, bounds = upper_lower_bound_prob, constraints = cons)

	min_entropy_point = {}
	for i in range(len(cost_list)):
		min_entropy_point[cost_list[i]] = int(round(res.x[i] * domain_size))

	return (res.x, res.fun)

def get_min_entropy_polyhedron(upper_lower_bounds, domain_size):
	matrix = []
	fractionize = np.vectorize(lambda x: Fraction(str(x)))
	upper_lower_bounds_list = []
	for cost in upper_lower_bounds:
		upper_lower_bounds_list.append((cost, upper_lower_bounds[cost]))
	for i in range(len(upper_lower_bounds_list) - 1):
		constraint1 = fractionize(np.zeros(len(upper_lower_bounds)))
		constraint2 = fractionize(np.zeros(len(upper_lower_bounds)))
		constraint1[0] = Fraction(-1 * upper_lower_bounds_list[i][1][0], domain_size)
		constraint2[0] = Fraction(upper_lower_bounds_list[i][1][1], domain_size)
		constraint1[i+1] = Fraction(1)
		constraint2[i+1] = Fraction(-1)
		matrix.append(constraint1)
		matrix.append(constraint2)

	domain_constraint_1 = fractionize(np.ones(len(upper_lower_bounds)))
	domain_constraint_2 = fractionize(np.ones(len(upper_lower_bounds)) * -1)

	domain_constraint_2[0] = Fraction(domain_size - upper_lower_bounds_list[-1][1][0], domain_size)
	domain_constraint_1[0] = Fraction(upper_lower_bounds_list[-1][1][1] - domain_size, domain_size)
	matrix.append(domain_constraint_1)
	matrix.append(domain_constraint_2)
	matrix = np.array(matrix)
	poly = pyparma.Polyhedron(hrep=matrix)
	vertices = poly.vrep()

	min_entropy = -1
	min_entropy_prob_point = np.zeros(1)
	for point in vertices:
		sum_prob = 0
		entropy = 0
		for frac in point[1:]:
			prob = frac.numerator / frac.denominator
			sum_prob += prob
			entropy += -1 * math.log(prob, 2) * prob
		entropy += -1 * math.log(1 - sum_prob, 2) * (1 - sum_prob)
		if min_entropy == -1 or entropy < min_entropy:
			min_entropy = entropy
			min_entropy_prob_point = point

	min_entropy_point = {}
	last_count = domain_size
	for i in range(len(upper_lower_bounds_list) - 1):
		count = int(round(min_entropy_prob_point[i + 1].numerator / min_entropy_prob_point[i + 1].denominator * domain_size))
		min_entropy_point[upper_lower_bounds_list[i][0]] = count
		last_count -= count

	min_entropy_point[upper_lower_bounds_list[-1][0]] = last_count	
	return (min_entropy_point, min_entropy)


if __name__ == '__main__':
	parser = argparse.ArgumentParser("Connect KLEE with SearchMC")
	parser.add_argument("--tool", required=True)
	parser.add_argument("--klee_output_dir", required=True)
	parser.add_argument("--target")
	parser.add_argument("--klee_dir")
	parser.add_argument("--domain_size")
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
	#klee_output_stream = subprocess.Popen([klee_dir, klee_output_dir, '-write-smt2s', target])

	ModelCounterFail = 0

	flag_explicit_domain = False

	if dict_args["tool"] == "searchMC":
		all_var_names = collect_variables(klee_output_dir[len('-output-dir='):])

	if dict_args["domain_size"] != None:
		domain_size = int(str(dict_args["domain_size"]))
		flag_explicit_domain = True
	else:
		if dict_args["tool"] == "abc":
			domain_size = calculate_domain_size_ABC(klee_output_dir[len('-output-dir='):])
		else:
			domain_size = 256 ** len(all_var_names)

	print("---------Domain Size: ", domain_size)

	stddev_max_list = []
	stddev_min_list = []
	hill_max_list = []
	hill_min_list = []
	time_list = []
	#while len(stddev_max_list) < 3:
	#	start_time = time.time()
	num_of_run = 0
	global_min_entropy = math.log(domain_size, 2)
	global_max_entropy = 0.0

	total_time = 0.0
	elapsed_time = 0.0
	while num_of_run < 5:
		try:
			ModelCounterFail = 0
			start_time = time.time()
			if dict_args["tool"] == "abc":
				observationConstraints = get_observation_constraints(klee_output_dir[len('-output-dir='):],"abc", domain_size, flag_explicit_domain)
			else:
				observationConstraints = get_observation_constraints(klee_output_dir[len('-output-dir='):],"searchMC", domain_size, flag_explicit_domain)
			
			print("Model countng time:", time.time() - start_time)
			#print(observationConstraints)
			upper_lower_bounds = get_upper_lower_bounds(observationConstraints)
			print("upper and lower bounds given by Model Counter:", upper_lower_bounds)
			print("Size: ", len(upper_lower_bounds))

			#max_entropy_stddev = get_max_entropy_standard_deviation(upper_lower_bounds, domain_size)
			#min_entropy_stddev = get_min_entropy_standard_deviation(upper_lower_bounds, domain_size)
			#print("Max entropy (stddev): {}, Min entropy (stddev): {}".format(max_entropy_stddev[1], min_entropy_stddev[1]))

			max_entropy_hill = get_max_entropy_hill_climbing_deterministic(upper_lower_bounds, domain_size)
			#min_entropy_hill = get_min_entropy_hill_climbing_deterministic(upper_lower_bounds, domain_size)
			print("Max entropy (hill climbing): {}".format(max_entropy_hill[1]))
			#print("Max entropy (hill climbing): {}, Min entropy (hill climbing): {}".format(max_entropy_hill[1], min_entropy_hill[1]))

			#max_entropy_SA = get_max_entropy_SA(upper_lower_bounds, domain_size)
			#min_entropy_SA = get_min_entropy_SA(upper_lower_bounds, domain_size)
			#print("Max entropy (simulated annealing): {}, Min entropy (simulated annealing): {}".format(max_entropy_SA[1], min_entropy_SA[1]))

			#max_entropy_SLSQP = get_max_entropy_SLSQP(upper_lower_bounds, domain_size)
			min_entropy_polyhedron = get_min_entropy_polyhedron(upper_lower_bounds, domain_size)
			print("Min entropy (polyhedron): {}".format(min_entropy_polyhedron[1]))
			#print("Max entropy (SLSQP): {}, Min entropy (polyhedron): {}".format(max_entropy_SLSQP[1], min_entropy_polyhedron[1]))

			#print("Max entropy point (stddev): {}, Min entropy point (stddev): {}".format(max_entropy_stddev[0], min_entropy_stddev[0]))
			#print("Max entropy point (hill climbing): {}, Min entropy point (hill climbing): {}".format(max_entropy_hill[0], min_entropy_hill[0]))
			#print("Max entropy point (simulated annealing): {}, Min entropy point (simulated annealing): {}".format(max_entropy_SA[0], min_entropy_SA[0]))
			#print("Max entropy point (SLSQP): {}, Min entropy point (polyhedron): {}".format(max_entropy_SLSQP[0], min_entropy_polyhedron[0]))

			#stddev_max_list.append(max_entropy_stddev[1])
			#stddev_min_list.append(min_entropy_stddev[1])
			end_time = time.time()
			elapsed_time = end_time - start_time
			time_list.append(elapsed_time)
			print("Time for this run:", elapsed_time, "s")
			print('\n')
			if global_max_entropy < max_entropy_hill[1]:
				global_max_entropy = max_entropy_hill[1]

			if global_min_entropy > min_entropy_polyhedron[1]:
				global_min_entropy = min_entropy_polyhedron[1]

			total_time += elapsed_time

			num_of_run += 1
		except ZeroDivisionError:
			ModelCounterFail+=1
		except ValueError as e:
			print (e)
			ModelCounterFail+=1

		print("Model Counter Fail:", ModelCounterFail)
		#print("stddev_hill_mismatch", stddev_hill_mismatch)
		#print("Avg Max (stddev): {} Avg Min (stddev): {}".format(sum(stddev_max_list)/3, sum(stddev_min_list)/3))
		#print("Avg Max (hill): {} Avg Min (hill): {}".format(sum(hill_max_list)/3, sum(hill_min_list)/3))
		#print("Avg time: {}".format(sum(time_list)/3))
		#print("Avg solving time: {}".format(total_solving_time/3))

	print("Minimum entropy after 5 successful run: ", global_min_entropy)
	print("Maximum entropy after 5 successful run: ", global_max_entropy)
	print("Average time for each run: ", total_time/5)
	
	
