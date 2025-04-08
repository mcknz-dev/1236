#!/bin/bash

#Hexigonal Function Calculaton
hexagonal_number() {
    echo $(( n * (2 * n - 1) ))
}

#user input 
echo "Please think of 2 numbers..."
read -p "Enter the lower number (a): " a
read -p "Enter the higher number (b): " b

#variables
odd_count=0
even_count=0
odd_sum=0
even_sum=0

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
            ((even_count++))
            ((even_sum+=hex))
        else
            echo "$hex (odd)"
            ((odd_count++))
            ((odd_sum+=hex))
        fi
    fi
    ((n++))
done


# Print results at bottom 
echo "\nResults:"
echo "Total odd hexagonal numbers: $odd_count"
echo "Total even hexagonal numbers: $even_count"
echo "Sum of odd hexagonal numbers: $odd_sum"
echo "Sum of even hexagonal numbers: $even_sum"

