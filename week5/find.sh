#!/bin/bash
echo -e "Word Search using GREP! \n"
echo -e "Type in the week number folder within the directory /home/moussa333/coding/ .i.e. week4 type the number 4 (press ENTER once done):    \n"
read wk
echo -e "\nType in a name of a file within that weeks folder (press ENTER once done):    \n"
read file
echo -e "\nType in a word you wish to search for (press ENTER once done):    \n"
read word
clear

echo -e "\nAll lines that have words with \" $word , within the document $file \" are:   \n"
grep $word /home/moussa333/coding/week$wk/$file

echo -e "\nAll lines that have words with \" $word , with text in double quotes, and that ends in an exclamation mark within the document $file \" are:   \n"
grep 'echo .*".*!"' /home/moussa333/coding/week$wk/$file

echo -e "\nAll lines that have words with \" $word , within the document $file \", regardless of capital letters or not are:   \n"
grep -i $word /home/moussa333/coding/week$wk/$file

exit 0

