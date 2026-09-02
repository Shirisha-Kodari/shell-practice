#!/bin/bash
LOGFILE="nginx.log" #create log file and store logs in nginx.log  
echo "install nginx ..successfully"

 sudo dnf install nginx -y > "$LOGFILE" 2>&1  #> append content in file and overite 

if [ $? -eq 0 ] #0-->success and 1,2 -->failed 
 then 
 echo "install nginx successfully" 
 sudo systemctl start nginx > "$LOGFILE" 2>&1
 sudo systemctl enable nginx > "$LOGFILE" 2>&1

echo "Nginx is running"
else

  echo "Nginx installation failed"
  echo "Check $LOGFILE for details"
  
 exit 1 

fi 

