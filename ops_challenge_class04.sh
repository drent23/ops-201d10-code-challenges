# Ops Challenge: Class 04
#!/bin/bash
# Script Name:                  Bash Arrays
# Author:                       David Renteria
# Date of latest revision:      10/26/2023
# Purpose:                      Create directories to put into an array

# Declaration of variables

# Declaration of functions

# Main
mkdir dir1 dir2 dir3 dir4
directories=("dir1" "dir2" "dir3" "dir4")
for i in "${directories[@]}"; do 
    touch "$i/$i.txt"
    echo "File $i.txt created in $i."
done
# Call the function

# End