#!/bin/bash

# Write a shell script to find out the factorial of a given number.

read -p "Enter a number: " num

factorial=1

if [ "$num" -lt 0 ]; then
    echo "Factorial is not defined for negative numbers."
else
    for (( i=1; i<=num; i++ ))
    do
        factorial=$((factorial * i))
    done
    
    echo "The factorial of $num is $factorial"
fi