#!/bin/bash

# USER=$(id -u)
# if [ USER -ne 0 ]
#    then 
#        echo "please run with root access"
#         exit 1
# else 
# echo "running with root access"
# fi 

# dnf install nginx -y 



echo "Installing Nginx..."

sudo yum install nginx -y

echo "Starting Nginx..."

sudo systemctl start nginx

echo "Enabling Nginx..."

sudo systemctl enable nginx

echo "Checking Nginx status..."

sudo systemctl status nginx