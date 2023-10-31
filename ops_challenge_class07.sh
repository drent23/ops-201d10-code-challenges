# Ops Challenge: Class 07
#!/bin/bash

# Script Name:                  LSHW & GREP
# Author:                       David Renteria
# Date of latest revision:      10/31/2023
# Purpose:                      Create a script that shows system info & removes irrelevant info

# Declaration of variables

# Declaration of functions

# Main
echo "--System Info & BIOS Report--"
echo "Computer Name: "
hostname 
echo
echo "CPU: "
lshw -class processor | grep -E 'product|vendor|physical id|bus info|width' | sed 's/.*: //' | sed 'N;s/\n/ /'
echo
echo "RAM: "
lshw -class memory | grep -E 'desciption|physical id|size' | sed 's/.*: //' | sed 'N;s/\n/ /'
echo
echo "Display Adapter: "
lshw -class display | sed 's/.*: //' | sed 'N;s/\n/ /'
echo
echo "Ntwk Adapter: "
lshw -class network | sed 's/.*: //' | sed 'N;s/\n/ /'
echo
echo "BIOS: "
dmidecode -t bios | sed 's/.*: //'
# End