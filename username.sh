#!/bin/bash

# Write a shell script to check an input string is a valid user name or not.

echo "Username Rules:"
echo "1. Must start with a letter or underscore."
echo "2. Can only contain letters, numbers, underscores, or hyphens."
echo "3. No spaces or special characters allowed."

read -p "Enter the username to check: " username
regex="^[a-zA-Z_][a-zA-Z0-9_-]*$"

if [[ $username =~ $regex ]]; then
    echo "Valid username."
else
    echo "Invalid username."
fi

