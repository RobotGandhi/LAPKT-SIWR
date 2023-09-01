#!/usr/bin/env python3
import sys
import random
import math
from collections import defaultdict

if len(sys.argv) != 4:
    raise SystemExit(
        "Usage: <grid-size-min> <grid-size-max> <seed>"
    )

grid_size_min = int(sys.argv[1])
grid_size_max = int(sys.argv[2])
seed = int(sys.argv[3])


#TODO: and the highest amount of painted cells to half the total amount of cells.
#There should be at least one group with a size larger than 1.

random.seed(seed)
for width in range(grid_size_min,grid_size_max + 1):
    for height in range(grid_size_min,grid_size_max + 1):
        taken_cells = defaultdict(list)

        number_of_groups = 1
        if width * height > 8:
            number_of_groups = random.randint(2, math.floor(width * height / 4))
        sys.stdout = open(f'nurikabe_{width}_{height}_{seed}.pddl', 'w')

        print("(define (problem nurikabe-generated)")
        print("\t(:domain nurikabe)")

        print("(:objects")
        temp = ""
        for x in range(width):
            for y in range(height):
                temp += f"c_{x}_{y} "

        print(f"\t{temp}- cell")

        temp = ""
        for i in range(number_of_groups):
            temp += f"g_{i} "

        print(f"\t{temp}- group")

        temp = ""
        for i in range(1, (width * height) + 1):
            temp += f"n{i} "

        print(f"\t{temp}- num")

                
        print(")\n")

        print("(:init")
        print(f"\t(at c_{random.randint(0, width - 1)}_{random.randint(0, height - 1)})")
        print("\t(moving)")
        for x in range(width):
            for y in range(height):
                if x != 0: print(f"\t(connected c_{x}_{y} c_{x - 1}_{y})")
                if x != width - 1: print(f"\t(connected c_{x}_{y} c_{x + 1}_{y})")
                if y != 0: print(f"\t(connected c_{x}_{y} c_{x}_{y - 1})")
                if y != height - 1: print(f"\t(connected c_{x}_{y} c_{x}_{y + 1})")

        for i in range(width * height):
            print(f"\t(number-predecessor n{i} n{i + 1})")

        for i in range(number_of_groups):
            x = random.randint(0, width - 1)
            y = random.randint(0, height - 1)
            while x in taken_cells and y in taken_cells[x]:
                x = random.randint(0, width - 1)
                y = random.randint(0, height - 1)
                
            print(f"\t(group-source c_{x}_{y} g_{i})")
            taken_cells[x].append(y)

        remaining_cells = math.floor(width * height)
        all_ones = True
        for i in reversed(range(number_of_groups)):
            n = random.randint(1, remaining_cells - i)
            remaining_cells = remaining_cells - n
            if n is not 1:
                all_ones = False
            if i is 0 and all_ones is True:
                while n is 1:
                    n = random.randint(1, remaining_cells - i)
            print(f"\t(remaining-cells g_{i} n{n})")
        print(")\n")

        print("(:goal")

        print("\t(and")
        for i in range(number_of_groups):
            print(f"\t\t(group-painted g_{i})")
        print("\t)")

        print(")")

        print(")")
