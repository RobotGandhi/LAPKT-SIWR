#!/usr/bin/env python3
import sys
import random

if len(sys.argv) != 5:
    raise SystemExit(
        "Usage: <grid-size> <boxes> <trucks> <seed>"
    )

grid_size = int(sys.argv[1])
boxes = int(sys.argv[2])
trucks = int(sys.argv[3])
seed = int(sys.argv[4])

random.seed(seed)
sys.stdout = open('output.txt', 'w')

print("(define (problem transport-generated)")
print("\t(:domain transport)")

print("(:objects")
temp = ""
for x in range(grid_size):
    for y in range(grid_size):
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
print(")\n")

print("(:init")
for x in range(grid_size):
    for y in range(grid_size):
        if x != 0: print(f"\t(connected p_{x}_{y} p_{x - 1}_{y})")
        if x != grid_size - 1: print(f"\t(connected p_{x}_{y} p_{x + 1}_{y})")
        if y != 0: print(f"\t(connected p_{x}_{y} p_{x}_{y - 1})")
        if y != grid_size - 1: print(f"\t(connected p_{x}_{y} p_{x}_{y + 1})")

        
for i in range(boxes):
    print(f"\t(at b{i} p_{random.randint(0, grid_size - 1)}_{random.randint(0, grid_size - 1)})")
for i in range(trucks):
    print(f"\t(at t{i} p_{random.randint(0, grid_size - 1)}_{random.randint(0, grid_size - 1)})")
    print(f"\t(empty t{i})")
print(")\n")

print("(:goal")
print("\t(and")
for i in range(boxes):
    print(f"\t\t(at b{i} p_{grid_size - 1}_{grid_size - 1})")
print("\t)")
print(")")

print(")")