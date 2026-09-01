#1/bin/bash

USER=$(id -u)
if [ USER -ne 0 ]
   then 
       echo "please run with root access"
        exit 1
else 
echo "running with root access"
fi 

dnf install nginx -y 
