#!/bin/bash

echo "install nginx ..successfully"

 sudo dnf install nginx -y 

if [ $? -eq 0 ] #0-->success and 1,2 -->failed 
 then 
 echo "install nginx successfully" 
 sudo systemctl start nginx
 sudo systemctl enable nginx

echo "Nginx is running"
else
 exit 1 

fi 

