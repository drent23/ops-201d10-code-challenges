# Ops Challenge: Class 05
#!/bin/bash
# Script Name:                  Bash Loops
# Author:                       David Renteria
# Date of latest revision:      10/27/2023
# Purpose:                      Script that identifies and kills a process and uses a loop

# Declaration of variables
count=1
# Declaration of functions

# Define an array

# Main
while [ $count -gt 0 ]; do
    ps aux
    read -p "Please enter the PID you would like to kill: " pid
    kill $pid
    echo "Your selected process, $pid, was terminated."
done
# Call the function

# End