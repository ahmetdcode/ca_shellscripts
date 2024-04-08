#!/bin/zsh

# basic for construct
#for arg in [list]
#do
# command(s)...
#done

# basic while construct
#while [ condition ]
#do
# command(s)...
#done

# basic until construct 
#The until construct tests for a condition, and if false, executes commands. It keeps looping as long as the condition is false (opposite of while construct)
#COUNT=1
#until [ $COUNT -gt 5 ]; do
#  echo "Value of count is: $COUNT"
#  COUNT=$(($COUNT + 1))
#done

# basic break and continue statements
#break and continue can be used to control the loop execution of for, while and until constructs. continue is used to skip the rest of a particular loop iteration, whereas break is used to skip the entire rest of loop. A few examples:

#COUNT=0
#while [ $COUNT -ge 0 ]; do
#  echo "Value of COUNT is: $COUNT"
#  COUNT=$((COUNT+1))
#  if [ $COUNT -ge 5 ] ; then
#    break
#  fi
#done

# Prints out only odd numbers - 1,3,5,7,9
#COUNT=0
#while [ $COUNT -lt 10 ]; do
#  COUNT=$((COUNT+1))
#  # Check if COUNT is even
#  if [ $(($COUNT % 2)) = 0 ] ; then
#    continue
#  fi
#  echo $COUNT
#done

#Exercise 
#In this exercise, you will need to loop through and print out all even numbers from the numbers list in the same order they are received. Don't print any numbers that come after 237 in the sequence.

NUMBERS=(951 402 984 651 360 69 408 319 601 485 980 507 725 547 544 615 83 165 141 501 263 617 865 575 219 390 237 412 566 826 248 866 950 626 949 687 217 815 67 104 58 512 24 892 894 767 553 81 379 843 831 445 742 717 958 609 842 451 688 753 854 685 93 857 440 380 126 721 328 753 470 743 527)

# write your code here

for i in ${NUMBERS[@]}; do
	
    if [ $i -eq 237 ]; then
    	break;
    elif [ $(($i % 2)) -eq 0 ]; then
    	echo $i
    fi
done 

