#!/usr/bin/env python3
import sys
import random
import math
from os.path import exists
from os import makedirs

if len(sys.argv) != 7:
    raise SystemExit(
        "Usage: <grid-size-min> <grid-size-max> <grid-size-step> <boxes-ratio> <trucks> <seed>"
    )

grid_size_min = int(sys.argv[1])
grid_size_max = int(sys.argv[2])
grid_size_step = int(sys.argv[3])
boxes_ratio = float(sys.argv[4])
trucks = int(sys.argv[5])
seed = int(sys.argv[6])

input_dict = {}
if exists(f"input_{boxes_ratio}_{seed}.txt"):
    input = open(f"input_{boxes_ratio}_{seed}.txt", 'r')
    lines = input.readlines()
    for line in lines:
        elements = line.split()
        input_dict[elements[0]] = elements[1]

random.seed(seed)
for truck_fuel_ratio_difference in range(0, 11):
    truck_fuel_ratio_difference /= 20
    for width in range(grid_size_min, grid_size_max + 1, grid_size_step):
        for height in range(grid_size_min, grid_size_max + 1, grid_size_step):
            boxes = math.floor((width * height) * boxes_ratio)
            fuel = 0
            if not exists(f"outputs_minus_{truck_fuel_ratio_difference}"):
                makedirs(f"outputs_minus_{truck_fuel_ratio_difference}")
            if not exists(f"outputs_plus_{truck_fuel_ratio_difference}"):
                makedirs(f"outputs_plus_{truck_fuel_ratio_difference}")
            if f"{width}_{height}_{boxes}_{trucks}" in input_dict:
                sys.stdout = open(f'outputs_plus_{truck_fuel_ratio_difference}/transport_{width}_{height}_{boxes}_{trucks}.pddl', 'w')
                fuel = int(input_dict[f'{width}_{height}_{boxes}_{trucks}'])
            else:
                sys.stdout = open(f'outputs_minus_{truck_fuel_ratio_difference}/transport_{width}_{height}_{boxes}_{trucks}.pddl', 'w')
                fuel = 2 * (width + height - 2) * boxes

            print("(define (problem transport-generated)")
            print("\t(:domain transport)")

            print("(:objects")
            temp = ""
            for x in range(width):
                for y in range(height):
                    temp += f"p_{x}_{y} "

            print(f"\t{temp}- place")

            temp = ""
            for i in range(boxes):
                temp += f"b{i} "

            print(f"\t{temp}- box")

            temp = ""
            for i in range(trucks):
                temp += f"t{i} "

            print(f"\t{temp}- truck")
            for i in range(fuel + 1):
                print(f"\tf{i} - fuel")
            print(")\n")

            print("(:init")
            for x in range(width):
                for y in range(height):
                    if x != 0: print(f"\t(connected p_{x}_{y} p_{x - 1}_{y})")
                    if x != width - 1: print(f"\t(connected p_{x}_{y} p_{x + 1}_{y})")
                    if y != 0: print(f"\t(connected p_{x}_{y} p_{x}_{y - 1})")
                    if y != height - 1: print(f"\t(connected p_{x}_{y} p_{x}_{y + 1})")

            # total_fuel_needed = width + height        
            for i in range(boxes):
                x = random.randint(0, width - 1)
                y = random.randint(0, height - 1)
                # total_fuel_needed += (width - x) + (height - y)
                print(f"\t(at b{i} p_{x}_{y})")
            for i in range(trucks):
                print(f"\t(at t{i} p_{random.randint(0, width - 1)}_{random.randint(0, height - 1)})")
                print(f"\t(empty t{i})")
                # print(f"\t(fuel-level t{i} f{math.ceil(total_fuel_needed * truck_fuel_ratio)})")
                if f"{width}_{height}_{boxes}_{trucks}" in input_dict:
                    print(f"\t(fuel-level t{i} f{math.ceil(fuel * (1 + truck_fuel_ratio_difference))})")
                else:
                    print(f"\t(fuel-level t{i} f{math.ceil(fuel * (1 - truck_fuel_ratio_difference))})")

            # for i in range(math.ceil(total_fuel_needed * truck_fuel_ratio)):
            for i in range(fuel):
                print(f"\t(fuel-predecessor f{i} f{i + 1})")

            print("\t(= (total-cost) 0)")

            print(")\n")

            print("(:goal")
            print("\t(and")
            for i in range(boxes):
                print(f"\t\t(at b{i} p_{random.randint(0, width - 1)}_{random.randint(0, height - 1)})")
            print("\t)")
            print(")\n")

            print("(:metric minimize (total-cost))")


            print(")")
