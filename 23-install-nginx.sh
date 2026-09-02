#!/bin/bash

echo "install nginx ..successfully"

 dnf install nginx -y 

if [$? - eq 0] 
 then 
 echo "install nginx successfully" 
 sudo systemctl start nginx
 sudo systemctl enable nginx

echo "Nginx is running"
else
 exit1 

fi 

