#!/bin/bash
clear

# Prompt the user for source and destination folders
read -p "Type a name for the folder you would like to copy: " source
read -p "Type the destination folder you would like to copy it to (destination folder will be created if it does not exist): " dest

# Check if source directory exists
if [[ -d "$source" ]]; then
    # Check if destination directory exists
    if [[ -d "$dest" ]]; then
        # Copy the source folder to the destination
        cp -r "$source" "$dest"
        echo "Copied folder '$source' to folder '$dest'."
    else
        # Destination directory does not exist, ask user to create it
        echo "Destination folder '$dest' does not exist."
        read -p "Would you like to create the destination folder? Y or N? " ans
        if [[ "$ans" == "Y" ]] || [[ "$ans" == "y" ]]; then
            mkdir -p "$dest"
            cp -r "$source" "$dest"
            echo "Destination folder created and folder '$source' copied to it."
        else
            echo "Goodbye."
        fi
    fi
else
    echo "Source folder '$source' does not exist."
    read -p "Would you like to create the source folder and destination folder? Y or N? " ans
    if [[ "$ans" == "Y" ]] || [[ "$ans" == "y" ]]; then
        mkdir -p "$source" "$dest"
        echo "Source folder '$source' and destination folder '$dest' created."
    else
        echo "Goodbye."
    fi
fi
