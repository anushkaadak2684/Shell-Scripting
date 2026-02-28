#!/bin/bash

# Write a shell script that sorts an array of integers using any well-known sorting algorithm.

arr=("$@")
if [ $# -lt 1 ]
then
	echo "Enter atleast 2 numbers"
	exit 1
fi
n=${#arr[@]}

for (( i=1; i<n; i++ ))
do
    key=${arr[i]}
    j=$((i - 1))

    while [ $j -ge 0 ] && [ ${arr[j]} -gt $key ]
    do
        arr[$((j + 1))]=${arr[j]}
        j=$((j - 1))
    done

    arr[$((j + 1))]=$key
done

echo "Sorted array: ${arr[@]}"

