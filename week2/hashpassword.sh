#!/bin/bash
clear
read -sp 'Enter a New Password:   ' pass
echo -e "\n"
echo $pass | sha256sum > secret.txt

read -sp 'Now re-enter password to comfirm:   ' var_test
hash_test=$(echo $var_test | sha256sum)

hash_file="secret.txt"
hash_pass=$(cat "$hash_file")
echo -e "\n"
echo -e "Your encrypted 1st Password was:   \n $hash_pass"
echo -e "\n Password that you re-entered was:   \n $hash_test"

if [ "$hash_test" == "$hash_pass" ]; then
 cowsay "* Access Granted *"
 exit 0
else
 figlet "* Access Denied *"
 exit 1
fi
