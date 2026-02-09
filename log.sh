#!/bin/bash

# Write a shell script to compute the Common Logarithm of an integer N. The value of N should be taken as command-line argument. The resulting value should not contain more than two digits after the decimal point.

if [ -z "$1" ]; then
    echo "Please provide an integer argument."
    exit 1
fi

N=$1
result=$(echo "l($N)/l(10)" | bc -l)
printf "%.2f\n" "$result"


