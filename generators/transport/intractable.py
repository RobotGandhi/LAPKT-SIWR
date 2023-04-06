#!/usr/bin/env python3
import sys
import random
import math

if len(sys.argv) != 8:
    raise SystemExit(
        "Usage: <grid-size-min> <grid-size-max> <grid-size-step> <boxes-ratio> <trucks> <truck-fuel-ratio> <seed>"
    )

grid_size_min = int(sys.argv[1])
grid_size_max = int(sys.argv[2])
grid_size_step = int(sys.argv[3])
boxes_ratio = float(sys.argv[4])
trucks = int(sys.argv[5])
truck_fuel_ratio = float(sys.argv[6])
seed = int(sys.argv[7])

random.seed(seed)
for width in range(grid_size_min, grid_size_max + 1, grid_size_step):
    for height in range(grid_size_min, grid_size_max + 1, grid_size_step):
        boxes = math.floor((width * height) * boxes_ratio)
        fuel_upper_bound = 2 * (width + height) * boxes
        fuel = math.ceil(fuel_upper_bound)
        sys.stdout = open(f'outputs/transport_{width}_{height}_{boxes}_{trucks}.pddl', 'w')

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
            print(f"\t(fuel-level t{i} f{fuel})")

        # for i in range(math.ceil(total_fuel_needed * truck_fuel_ratio)):
        for i in range(fuel):
            print(f"\t(fuel-predecessor f{i} f{i + 1})")
        print(")\n")

        print("(:goal")
        print("\t(and")
        for i in range(boxes):
            print(f"\t\t(at b{i} p_{random.randint(0, width - 1)}_{random.randint(0, height - 1)})")
        print("\t)")
        print(")")

        print(")")
