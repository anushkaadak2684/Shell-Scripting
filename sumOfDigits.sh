#!/bin/bash

# Write a shell script to find the sum of digits of a user supplied number. Also, check for invalid user inputs and show appropriate error message.

read -p "Enter a number: " num

if ! [[ "$num" =~ ^[0-9]+$ ]]; then
    echo "Error: Invalid input. Please enter a positive integer."
    exit 1
fi

original_num=$num
sum=0

while [ "$num" -gt 0 ]
do
    digit=$((num % 10))
    
    sum=$((sum + digit))
    
    num=$((num / 10))
done

echo "The sum of digits of $original_num is: $sum"