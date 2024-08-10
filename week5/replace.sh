#!/bin/bash

echo -e "Word Search and Replace using SED and REGEX! \n"
echo -e "Type in the week number folder within the directory /home/moussa333/coding/ (e.g., for week4, type the number 4):\n"
read wk
echo -e "\nType in the name of a file within that week's folder (e.g., guessinggame.sh):\n"
read file
echo -e "\nType in the word you wish to search for (press ENTER once done):\n"
read word
echo -e "\nType in the word you wish to replace it with (e.g., replace the word 'Correct' with 'Right'):\n"
read rep
clear
echo -e "\nReplacing all occurrences of \"$word\" with \"$rep\" in the file $file...\n\n"

sed -i "s/$word/$rep/g" /home/moussa333/coding/week$wk/$file
# or sed -i '/echo .*".*!"/ s/Correct/Right/' ../Week\ 4/GuessingGame.sh 
echo -e "Displaying all lines that have been modified:    \n"
grep --color=auto -n "$rep" /home/moussa333/coding/week$wk/$file

echo -e "\n\nReplacement complete."

exit 0



