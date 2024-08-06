#!/bin/bash

# This function prints a given error in red text
printError() {
    echo -e "\033[31mERROR:\033[0m $1"
}

# This function will get a value between the 2nd and 3rd arguments
getNumber() {
    local input
    while true; do
        read -r -p "$1: " input
        # Check if the input is a valid number
        if [[ $input =~ ^[0-9]+$ ]]; then
            # Convert input to integer for comparison
            input=$((input))
            # Check if the number is within the specified range
            if (( input < $2 )); then
                printError "Input must be at least $2"
            elif (( input > $3 )); then
                printError "Input must not exceed $3"
            else
                echo $input
                break
            fi
        else
            printError "Input must be a valid number"
        fi
    done
}

echo "Welcome to the Guessing Game!"

# Number to guess
target=42

while true; do
    number=$(getNumber "Please type a number between 1 and 100" 1 100)

    if (( number == target )); then
        echo -e "\nCorrect!"
        break
    elif (( number < target )); then
        echo -e "\nToo Low!"
    else
        echo -e "\nToo High!"
    fi
done
