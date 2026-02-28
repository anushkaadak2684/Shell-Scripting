#!/bin/bash

# Write a shell script to take a positive integer as user input and do the following,

#         i) Compute the square root of the number and print.
#         ii) Convert the number from decimal to Hexadecimal and print.

read -p "Enter a positive integer: " num

sqrt_val=$(echo "scale=4; sqrt($num)" | bc -l)
echo "Square root: $sqrt_val"

hex_val=$(printf "%X" "$num")
echo "Hexadecimal: $hex_val"
