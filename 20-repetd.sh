#!/bin/bash



LOGFILE="old_logs.txt"

find /var/log -type f -mtime 4 > "$LOGFILE"

echo "4 days old logs stored successfully"

# str="missap"

# echo "$str" | grep -o . | sort | uniq -cd

# # str="missap"

# # echo "$str" \
# #   | grep -o . \        # split into individual characters
# #   | sort \             # sort alphabetically
# #   | uniq -c            # count repeating letters