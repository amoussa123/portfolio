echo "Enter the password:"
read password

len="${#password}"

if test $len -ge 8; then
    echo "$password" | grep -q [0-9]
    if test $? -eq 0; then
        echo "$password" | grep -q [A-Z]
        if test $? -eq 0; then
            echo "$password" | grep -q [a-z]
            if test $? -eq 0; then
                echo "$password" | grep -q '[$@#%]'
                if test $? -eq 0; then
                    echo "Strong password"
                else
                    echo "Weak password: include special characters"
                fi
            else
                echo "Weak password: include lower case characters"
            fi
        else
            echo "Weak password: include capital characters"
        fi
    else
        echo "Weak password: please include numbers"
    fi
else
    echo "Weak password: length should be at least 8 characters"
fi

exit 0
