#!/bin/zsh

#In this exercise, you will need to change Warren Buffett's known saying. First create a variable ISAY and assign it the original saying value. Then re-assign it with a new changed value using the string operations and following the 4 defined changes: Change1: replace the first occurrence of 'snow' with 'foot'. Change2: delete the second occurrence of 'snow'. Change3: replace 'finding' with 'getting'. Change4: delete all characters following 'wet'. Tip: One way to implement Change4, if to find the index of 'w' in the word 'wet' and then use substring extraction.

BUFFETT="Life is like a snowball. The important thing is finding wet snow and a really long hill."
# write your code here
ISAY="${BUFFETT}"
echo "${ISAY}"

ISAY=${ISAY[@]/snow/foot}
echo "change1 : ${ISAY}" 

ISAY="${BUFFETT}"
ISAY=${ISAY[@]//snow/}
echo "change2: ${ISAY}"

ISAY="${BUFFETT}"
ISAY=${ISAY[@]/finding/getting}
echo "change3: ${ISAY}"

ISAY="${BUFFETT}"
loc=`expr index "ISAY" 'w'`
ISAY=${ISAY::$loc+2}
