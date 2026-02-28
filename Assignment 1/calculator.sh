#!/bin/bash

# a) Write a shell script to implement a menu driven
# integer calculator having the following operations:
# 1. Addition of 2 numbers
# 2. Subtraction of 2 numbers
# 3. Multiplication of 2 numbers
# 4. Division of 2 numbers
# 5. Modulo of 2 numbers
# 6. Exit
# For each operation, the operands are taken as user input.

while true
do
    echo "---------------------------------"
    echo "       INTEGER CALCULATOR"
    echo "---------------------------------"
    echo "1. Addition"
    echo "2. Subtraction"
    echo "3. Multiplication"
    echo "4. Division"
    echo "5. Modulo"
    echo "6. Exit"
    echo "---------------------------------"
    read -p "Enter your choice [1-6]: " choice

    if [ "$choice" -eq 6 ]; then
        echo "Exiting..."
        break
    fi
    read -p "Enter first number: " num1
    read -p "Enter second number: " num2

    case $choice in
        1)
            result=$((num1 + num2))
            echo "Result: $num1 + $num2 = $result"
            ;;
        2)
            result=$((num1 - num2))
            echo "Result: $num1 - $num2 = $result"
            ;;
        3)
            result=$((num1 * num2))
            echo "Result: $num1 * $num2 = $result"
            ;;
        4)
            if [ "$num2" -eq 0 ]; then
                echo "Error: Division by zero is not allowed."
            else
                result=$((num1 / num2))
                echo "Result: $num1 / $num2 = $result"
            fi
            ;;
        5)
            if [ "$num2" -eq 0 ]; then
                echo "Error: Modulo by zero is not allowed."
            else
                result=$((num1 % num2))
                echo "Result: $num1 % $num2 = $result"
            fi
            ;;
        *)
            echo "Invalid option. Please try again."
            ;;
    esac
    echo "" 
done