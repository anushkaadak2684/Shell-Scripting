#!/bin/sh

# Write a menu driven shell script with three options: 

# 1) Accept your personal details along with a password and store them in a data file (e.g. personal.dat); 2) Display the personal details stored in the data file after successfully matching the password stored in the file; 3) Exit from menu.

file="personal.dat"

while true
do
    echo "1. Enter personal details"
    echo "2. Display personal details"
    echo "3. Exit"
    echo "Enter your choice: \c"
    read ch

    case $ch in
    1)
        echo "Enter Name: \c"
        read name
        echo "Enter Age: \c"
        read age
        echo "Enter Address: \c"
        read addr
        echo "Set Password: \c"
        read pass

        echo "$name|$age|$addr|$pass" > $file
        echo "Details stored successfully!"
        echo ""
        ;;
    2)
        if [ ! -f $file ]
        then
            echo "No data file found!"
        else
            echo "Enter password: \c"
            read p
            stored_pass=`cut -d "|" -f4 $file`

            if [ "$p" = "$stored_pass" ]
            then
                echo "---- Personal Details ----"
                cut -d "|" -f1-3 $file
            else
                echo "Incorrect password!"
            fi
        fi
        echo ""
        ;;
    3)
        echo "Exiting..."
        exit
        ;;
    *)
        echo "Invalid choice!"
        echo ""
        ;;
    esac
done

