#!/bin/bash

# Write a shell script to generate Fibonacci series up to N-th term, where N is user input.

read -p "Enter the number of terms (N): " N

a=0
b=1

echo "The Fibonacci series up to $N terms is:"

for (( i=0; i<N; i++ ))
do
    echo -n "$a "
    
    fn=$((a + b))
    a=$b
    b=$fn
done

echo ""