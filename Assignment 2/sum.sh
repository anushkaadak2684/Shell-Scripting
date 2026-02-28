#!/bin/bash

# Write a shell script to find the summation of N natural numbers, where the values of N natural numbers are passed as command line arguments.
#	e.g.  $ ./mysum  2 3 4 5 6 7 8 9 10 11 12 13 14 15

sum=0
if [ $# -lt 2 ]
then
	echo "Enter atleast 2 numbers"
	exit 1
fi


for arg in "$@"
do
	sum=$((sum + arg))
done

echo "Sum of numbers= $sum"
