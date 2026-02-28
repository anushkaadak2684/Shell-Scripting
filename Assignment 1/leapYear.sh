#!/bin/bash

# Write a shell script to determine whether a given year is a leap year or not.

read -p "Enter a year (YYYY): " year

if (( (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0) )); then
    echo "$year is a Leap Year."
else
    echo "$year is NOT a Leap Year."
fi