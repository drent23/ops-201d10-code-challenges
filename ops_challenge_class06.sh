# Ops Challenge: Class 06
#!/bin/bash
# Script Name:                  Bash Conditionals
# Author:                       David Renteria
# Date of latest revision:      10/30/2023
# Purpose:                      Script that detects if files exist and, if not, creates them

# Declaration of variables

# Declaration of functions

# Define an array
files=("file1.txt" "file2.txt" "file3.txt" "file4.txt")
# Main
file_checker() {
    file_item="$1"
    for file in "${files[@]}"; do
        if [ "$file" == "$file_item" ]; then
        return 0
            echo "$file already exists."
        fi
    done
    return 1
}
while true;
do
    read -p "Search for a specific file by name or type 'exit' to exit." file_to_check
    if [ "$file_to_check" == "exit" ]; then
        break
    fi
    if file_checker "$file_to_check"; then
        echo "File '$file_to_check' already exists."
    else
        read -p "'$file_to_check' does not exist, would you like to create it? (yes/no)" create_file
        if [ "$create_file" == "yes" ]; then
        files+=("$file_to_check")
        echo "'$file_to_check' was created."
        else
            echo "'$file_to_check' was not created."
        fi
    fi
done
read -p "Would you like to see your list of files? (yes/no)" array_list
if [ "$array_list" == "yes" ]; then
    echo "Below is your list of files: "
    echo -e "\n'${files[*]}'"
else
    echo "Search complete."
fi
# Call the function

# End