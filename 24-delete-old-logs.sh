#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR:: Please run this script with root access"
    exit 1
fi

SOURCE_DIR="/home/ec2-user/app-logs"

LOGS_FOLDER="/var/log/shellscript-logs"
mkdir -p "$LOGS_FOLDER"

LOG_FILE="$LOGS_FOLDER/delete-old-logs.log"

echo "Script started at $(date)" | tee -a "$LOG_FILE"

FILES_TO_DELETE=$(find "$SOURCE_DIR" -type f -name "*.log" -mtime +14)

if [ -z "$FILES_TO_DELETE" ]
then
    echo "No logs older than 14 days found" | tee -a "$LOG_FILE"
    exit 0
fi

while IFS= read -r filepath
do
    echo "Deleting file: $filepath" | tee -a "$LOG_FILE"

    rm -f "$filepath"

    if [ $? -eq 0 ]
    then
        echo "SUCCESS: $filepath deleted" | tee -a "$LOG_FILE"
    else
        echo "FAILURE: Could not delete $filepath" | tee -a "$LOG_FILE"
    fi

done <<< "$FILES_TO_DELETE"

echo "Script executed successfully at $(date)" | tee -a "$LOG_FILE"
















mkdir -p /home/ec2-user/app-logs # create folder 
find /home/ec2-user/app-logs -type f -name "*.log" -mtime +14 #find out logs insdie folder 

