#!/bin/bash

show_menu() {
    echo "-------------------------------------"
    echo " Student Record Management System"
    echo "-------------------------------------"
    echo "1. Sort records by Roll No (Reverse) -> Sorted.dat"
    echo "2. Convert Sorted.dat to Uppercase"
    echo "3. Find Unique Names in Sorted.dat & Append to Students.dat"
    echo "4. Display 2nd and 3rd lines of Students.dat"
    echo "5. Exit"
    echo "-------------------------------------"
    echo -n "Enter your choice: "
}

while true; do
    show_menu
    read choice

    case $choice in
        1)
            if [ -f Students.dat ]; then
                sort -t'|' -k2nr Students.dat > Sorted.dat
                echo "Sorted records saved to 'Sorted.dat'."
                cat Sorted.dat
            else
                echo "Error: Students.dat not found."
            fi
            ;;
        2)
            if [ -f Sorted.dat ]; then
                tr '[:lower:]' '[:upper:]' < Sorted.dat > temp.dat && mv temp.dat Sorted.dat
                echo "Converted 'Sorted.dat' to uppercase."
                cat Sorted.dat
            else
                echo "Error: Sorted.dat not found. Run option 1 first."
            fi
            ;;
        3)
            if [ -f Sorted.dat ]; then
                echo "Appending records with unique names from Sorted.dat to Students.dat..."
                
                cut -d'|' -f1 Sorted.dat | sort | uniq -u > unique_names.txt
                                if [ -s unique_names.txt ]; then
                    grep -Ff unique_names.txt Sorted.dat >> Students.dat
                    echo "Unique records appended."
                    echo "New content of Students.dat:"
                    cat Students.dat
                else
                    echo "No unique names found."
                fi
                rm unique_names.txt
            else
                echo "Error: Sorted.dat not found. Run option 1 first."
            fi
            ;;
        4)
            if [ -f Students.dat ]; then
                echo "Lines 2 and 3 of Students.dat:"
                sed -n '2,3p' Students.dat
            else
                echo "Error: Students.dat not found."
            fi
            ;;
        5)
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid choice. Please try again."
            ;;
    esac
    echo ""
    echo "Press Enter to continue..."
    read discard
done
