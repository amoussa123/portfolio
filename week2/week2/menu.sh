#!/bin/bash
clear
pass_file="password.txt"
password=$(cat "$pass_file")
read -p 'Enter Access Password and press ENTER:   ' pass
echo -e "\n"
echo -e "The Password you wrote was:   \n $pass"
echo -e "\n"

if [ "$pass" == "$password" ]; then
 echo "You have entered the CORRECT password."
 cowsay "* Access Granted *"
 echo -e "\n"
 echo -e "Choose an option (1, 2 or 3) and then press ENTER:   \n" 
 echo -e "1. Create a Folder \n \n2. Copy a Folder \n \n3. Set a New Password \n \n4. Any other key or ENTER to exit \n" 
 read -sp '' option
 if [ "$option" -eq "3" ]; then
  echo -e "Please enter a new password:   \n" 
  ./passwordcheck.sh
 else
 if [ "$option" -eq "2" ]; then
  ./foldermaker.sh
  fi
exit 0
fi
else
 echo "You have entered the WRONG password."
 figlet "* Access Denied *"
 exit 1
fi
