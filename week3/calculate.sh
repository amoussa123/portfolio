#!/bin/bash
clear

# Function to prompt for numbers and validate input
get_numbers() {
    read -p "Now type in the 2 numbers you wish to use in your calculations (separated by a space): " x y
    if ! [[ "$x" =~ ^-?[0-9]+\.?[0-9]*$ ]] || ! [[ "$y" =~ ^-?[0-9]+\.?[0-9]*$ ]]; then
        echo "Invalid numbers provided. Please enter valid numeric values."
        exit 1
    fi
}

echo -e "What type of calculation would you like to make? \n"
echo -e "Choose between the different calculations: \n"
echo -e "1. Multiply\n2. Divide\n3. Addition\n4. Subtraction\n5. Powers\n6. Any other key or ENTER to exit \n"

read -p "Press ENTER once chosen: " option

case $option in
    1)  # Multiply
        get_numbers
        echo "Result: $(echo "$x * $y" | bc)"
        ;;
    2)  # Divide
        get_numbers
        if [ "$y" == "0" ]; then
            echo "Error: Division by zero is not allowed."
        else
            echo "Result: $(echo "$x / $y" | bc)"
        fi
        ;;
    3)  # Addition
        get_numbers
        echo "Result: $(echo "$x + $y" | bc)"
        ;;
    4)  # Subtraction
        get_numbers
        echo "Result: $(echo "$x - $y" | bc)"
        ;;
    5)  # Powers
        get_numbers
        echo "Result: $(echo "$x ^ $y" | bc)"
        ;;
    6|''|*)  # Exit
        echo "Exiting..."
        ;;
esac

exit 0
