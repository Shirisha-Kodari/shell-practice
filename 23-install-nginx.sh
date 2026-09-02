#!/bin/bash

USERID=$(id -u) # $ ecute command id -u and take output store in var USERID 

if [ $USERID -ne 0 ]  #equal to 0 and not equal to then exit 

then
    echo "ERROR:: Please run this script with root access"
    exit 1
else
    echo "You are running with root access"
fi

LOGFILE="nginx.log" #create log file and store logs in nginx.log  
echo "install nginx ..successfully"

 dnf install nginx -y > "$LOGFILE" 2>&1  #> append content in file and overite 

if [ $? -eq 0 ] #0-->success and 1,2 -->failed 
 then 
 echo "install nginx successfully" 
 systemctl start nginx > "$LOGFILE" 2>&1
 systemctl enable nginx > "$LOGFILE" 2>&1

echo "Nginx is running"
else

  echo "Nginx installation failed"
  echo "Check $LOGFILE for details"

 exit 1 

fi 

