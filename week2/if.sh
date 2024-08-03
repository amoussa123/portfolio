#!/bin/bash
clear
read -p "Enter Value:    " x
if [[ "$x" -ge 3 ]] && [[ "$x" -le 7 ]]; then
 echo "correct your number fell between the secret place (3-7)"
else
 echo "wrong your number did not fall between the secret place (3-7)"
fi
