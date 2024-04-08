#!/bin/zsh

numbers_array=(1 2 3)
strings_array=(hello world)

echo ${#numbers_array[@]}
echo ${strings_array[2]}
strings_array[2]="everyone"
echo ${strings_array[2]}

#Exercice 

NAMES=( John Eric Jessica )
# write your code here
NUMBERS=(1 2 3)
STRINGS=("HELLO" "WORLD")
NumberOfNames=${#NAMES[@]}
second_name=${NAMES[1]}

echo ${NUMBERS[@]}
echo ${STRINGS[@]}
echo "The number of names listed in the NAMES array: $NumberOfNames"
echo "The second name on the NAMES list is:" ${second_name}

