#!/bin/bash
echo -e "Checking existence of files and directories listed in filenames.txt:\n"

file="filenames.txt"

# Check if file exists
if [[ ! -f "$file" ]]; then
    echo "Error: $file not found!"
    exit 1
fi

# Read the file line by line
while IFS= read -r line; do
    # Trim leading and trailing whitespace
    line=$(echo "$line" | xargs)

    # Skip empty lines
    if [[ -z "$line" ]]; then
        continue
    fi

    if [[ -f "$line" ]]; then
        echo "$line: That file exists"
    elif [[ -d "$line" ]]; then
        echo "$line: That folder exists"
    else
        echo "$line: I don’t know what that is!"
    fi
done < "$file"
