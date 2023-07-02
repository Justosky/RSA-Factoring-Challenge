#!/usr/bin/python3
import sys

def factorize(number):
    """A function that returns the two factors of a number"""
    first_factor = 2;
    while (number % first_factor != 0):
        if (first_factor <= number):
            first_factor = first_factor + 1
    second_factor = number // first_factor
    return (first_factor, second_factor)

if (len(sys.argv) != 2):
    sys.exit(f"Wrong usage {argv[0]} <file_path>")

file_to_open = sys.argv[1]
file = open(file_to_open, 'r')
lines = file.readlines()

for line in lines:
    number = int(line.rstrip())
    first_factor, second_factor = factorize(number)
    print("{} = {} * {}".format(number, second_factor, first_factor))
