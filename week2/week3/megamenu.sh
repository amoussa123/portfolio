#!/bin/bash
clear

pass_file="password.txt"

# Check if password file exists
if [[ ! -f "$pass_file" ]]; then
    echo "Password file not found!"
    exit 1
fi

# Read the password from the file
password=$(cat "$pass_file")

# Prompt the user for the password
read -sp 'Enter Access Password and press ENTER: ' pass
echo -e "\n\nThe Password you wrote was: \n$pass\n"

# Verify the password
if [[ "$pass" == "$password" ]]; then
    echo "You have entered the CORRECT password."
    cowsay "* Access Granted *"
    echo -e "\nChoose an option and then press ENTER: \n" 
    echo -e "1. Create or Copy a Folder \n2. Set a New Password \n3. Calculator \n4. Create Week Folders \n5. Search Filenames or Folders \n6. Download a file \n7. Any other key or ENTER to exit \n" 
    
    read -p '' option
    
    # Process the user's choice
    case $option in
        1)
            ./foldermaker.sh
            ;;
        2)
            ./passwordcheck.sh
            ;;
        3)
            ./calculate.sh
            ;;
        4)
            ./megafoldermaker.sh
            ;;
        5)
            ./filenames.sh
            ;;
        6)
            ./urldownload.sh
            ;;
        7|''|*)
            echo "Exiting..."
            ;;
    esac
    exit 0
else
    echo "You have entered the WRONG password."
    figlet "* Access Denied *"
    exit 1
fi
