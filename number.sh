#!/bin/bash

read -p "Enter a positive integer: " num

sqrt_val=$(echo "scale=4; sqrt($num)" | bc -l)
echo "Square root: $sqrt_val"

hex_val=$(printf "%X" "$num")
echo "Hexadecimal: $hex_val"
