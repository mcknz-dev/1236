#!/bin/bash

#user input 
echo "Please think of 2 numbers..."
read -p "Enter the lower number: " a
read -p "Enter the higher number: " b

#variables
oddCount=0
evenCount=0
oddSum=0
evenSum=0

#Hexigonal Function Calculaton
hexagonal_number() {
    echo $(( n * (2 * n - 1) ))
}

#finding the hexigonal numbers 
echo "Hexagonal numbers within the range [$a, $b]:"
n=1
while true; do
    hex=$(hexagonal_number)
    if [ $hex -gt $b ]; then
        break
    fi

#finding out if they are even or odd 
    if [ $hex -ge $a ] && [ $hex -le $b ]; then
        if (( hex % 2 == 0 )); then
            echo "$hex (even)"
            ((evenCount++))
            ((evenSum+=hex))
        else
            echo "$hex (odd)"
            ((oddCount++))
            ((oddSum+=hex))
        fi
    fi
    ((n++))
done


# Print results at bottom 
echo "\nResults:"
echo "Total odd hexagonal numbers: $oddCount"
echo "Total even hexagonal numbers: $evenCount"
echo "Sum of odd hexagonal numbers: $oddSum"
echo "Sum of even hexagonal numbers: $evenSum"

