#!/bin/bash

# NUMBER=$1

# -gt --> greater than
# -lt --> less than
# -eq --> equal
# -ne --> not equal
# fi --> if condition ended

# if [ $NUMBER -lt 10 ]
# then
#     echo "Given number $NUMBER is less than 10"
# else
#     echo "Given number $NUMBER is not less than 10"
# fi 

NUMBER=12 
echo "Enter a number:"
read NUMBER
if [ $NUMBER -lt 15 ] 
then  
   echo "given number $NUMBER is less than 15"

else
 
  echo "given number $NUMBER is not less than 15"

fi 

# the give leass tha equal to 15 ex: 12<15 the print this values 
# not qual to 15 then 
