#!/bin/bash

echo -e "\nPlease Enter a new Password: \n"
read user

len="${#user}"

if test $len -ge 8; then
    echo "$user" | grep -q [0-9]
    if test $? -eq 0; then
        echo "$user" | grep -q [A-Z]
        if test $? -eq 0; then
            echo "$user" | grep -q [a-z]
            if test $? -eq 0; then
                echo "$user" | grep -q '[@#$%!&*]'
                if test $? -eq 0; then
                    echo -e "\nStrong password\n"
                    echo "Password has been saved."
                    echo "$user" > password.txt
                else
                    echo -e "\nWeak password: include special characters (@#$%!&*)\n"
                    echo "Try again or press CTRL+C to quit"
                    ./passwordcheck.sh
                fi
            else
                echo -e "\nWeak password: include lower case characters\n"	
                echo "Try again or press CTRL+C to quit"
                ./passwordcheck.sh
            fi
        else
            echo -e "\nWeak password: include capital characters\n"
            echo "Try again or press CTRL+C to quit"
            ./passwordcheck.sh
        fi
    else
        echo -e "\nWeak password: please include numbers\n"
   	echo "Try again or press CTRL+C to quit"
        ./passwordcheck.sh
    fi
else
    echo -e "\nWeak password: length should be at least 8 characters\n" 
    echo "Try again or press CTRL+C to quit"
    ./passwordcheck.sh
fi

exit 0
