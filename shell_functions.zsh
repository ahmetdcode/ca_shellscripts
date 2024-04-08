#!/bin/zsh

# basic construct
#function function_name {
#  command...
#}

#function function_B {
#  echo "Function B."
#}
#function function_A {
#  echo "$1"
#}
#function adder {
#  echo "$(($1 + $2))"
#}

# FUNCTION CALLS
# Pass parameter to function A
#function_A "Function A."     # Function A.
#function_B                   # Function B.
# Pass two parameters to function adder
#adder 12 56                  # 68

#Exercise 
#In this exercise, you will need to write a function called ENGLISH_CALC which can process sentences such as:'3 plus 5', '5 minus 1' or '4 times 6' and print the results as: '3 + 5 = 8', '5 - 1 = 4' or '4 * 6 = 24' respectively.

# enter your function code here
function ENGLISH_CALC_1 {
	total=$(($1 + $2)) 
	echo "$1 + $2 = $total"
}

function ENGLISH_CALC_2 {
        total=$(($1 - $2))
        echo "$1 - $2 = $total"
}

function ENGLISH_CALC_3 {
        total=$(($1 * $2))
        echo "$1 * $2 = $total"
}

# testing code
ENGLISH_CALC_1 3 5
ENGLISH_CALC_2 5 1
ENGLISH_CALC_3 4 6

function ENGLISH_CALC {
  a=$1
  b=$3
  signn=$2
  if [ $signn=="plus" ]; then
    echo "$a + $b = $(($a+$b))"
  elif [ $signn=="minus" ]; then
    echo "$a - $b = $(($a-$b))"
  elif [ $signn=="times" ]; then
    echo "$a * $b = $(($a*$b))"
  fi
}

# testing code
ENGLISH_CALC 3 plus 5
ENGLISH_CALC 5 minus 1
ENGLISH_CALC 4 times 6
