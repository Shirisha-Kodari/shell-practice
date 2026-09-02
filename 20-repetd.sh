#!/bin/bash



LOGFILE="old_logs.txt"

sudo find /var/log -type f -mtime 4 > "$LOGFILE"

if [ $? -eq 0 ]
then
    echo "4 days old logs stored successfully"
else
    echo "Failed to find logs"
    exit 1
fi

# str="missap"

# echo "$str" | grep -o . | sort | uniq -cd

# # str="missap"

# # echo "$str" \
# #   | grep -o . \        # split into individual characters
# #   | sort \             # sort alphabetically
# #   | uniq -c            # count repeating letters