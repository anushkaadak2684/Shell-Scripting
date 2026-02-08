#!/bin/bash

if [ -z "$1" ]; then
    echo "Please provide an integer argument."
    exit 1
fi

N=$1
result=$(echo "l($N)/l(10)" | bc -l)
printf "%.2f\n" "$result"


