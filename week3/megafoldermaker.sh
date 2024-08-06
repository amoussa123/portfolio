#!/bin/bash
clear

echo -e "Type in the folder numbers for all the weeks you wish to create. Use consecutive numbers, e.g., weeks: 3-6 (Type 3 6) or weeks 1-4 (Type 1 4):\n"
read x y

# Check if both x and y are valid numbers
if ! [[ "$x" =~ ^[0-9]+$ ]] || ! [[ "$y" =~ ^[0-9]+$ ]]; then
    echo "Error: Please provide valid numbers."
    exit 1
fi

# Ensure x is less than or equal to y
if (( x > y )); then
    echo "Error: The starting number must be less than or equal to the ending number."
    exit 1
fi

# Create directories for the given range
for ((i = x; i <= y; i++)); do
    dir="week $i"
    if [ -d "$dir" ]; then
        echo "Directory $dir already exists."
    else
        echo "Creating directory $dir"
        mkdir "$dir"
    fi
done
