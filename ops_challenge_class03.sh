# Ops Challenge: Class 03
#!/bin/bash
# Script Name:                  Bash Function
# Author:                       David Renteria
# Date of latest revision:      10/25/2023
# Purpose:                      Login history function

# Declaration of variables
loginHistory=`last`
# Declaration of functions
print_loginHistory() {
   echo "$loginHistory This is the login history."
}
# Main
print_loginHistory
print_loginHistory
print_loginHistory
# End