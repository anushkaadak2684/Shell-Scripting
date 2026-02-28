#!/bin/sh

# Write a menu driven shell script to do the following:

# i) Show the permissions of a file or directory; ii) Show the number of files and directories under current directory separately; iii) Show the last modification date and time of a file in current directory; iv) Exit from menu.

while true
do
    echo "1. Show permissions of a file/directory"
    echo "2. Show number of files and directories"
    echo "3. Show last modification date & time of a file"
    echo "4. Exit"
    echo "Enter your choice: \c"
    read ch

    case $ch in
    1)
        echo "Enter file or directory name: \c"
        read name
        ls -ld $name
        echo ""
        ;;
    2)
        echo "Number of files: \c"
        ls -l | grep "^-" | wc -l
        echo "Number of directories: \c"
        ls -l | grep "^d" | wc -l
        echo ""
        ;;
    3)
        echo "Enter file name: \c"
        read fname
        ls -l $fname | cut -c 34-
        echo ""
        ;;
    4)
        echo "Exiting..."
        exit
        ;;
    *)
        echo "Invalid choice!"
        echo ""
        ;;
    esac
done

