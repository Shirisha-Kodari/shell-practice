#!/bin/bash

# a=0 

# while [ $a -1t 10 ] # lessthan 10 
# do  
#   echo $a 
#   a= expr $a + 1 #print 1 to 9 numbers
# done 


# read -r even print any specical char
while IFS= read -r line #internal field separater by deafault taking line, read line by line 
do
    echo $line # lone-> variable and print line 
done < 17-set.sh