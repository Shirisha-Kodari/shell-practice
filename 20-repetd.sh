#!/bin/bash


str="missap"

echo "$str" | grep -o . | sort | uniq -cd

# str="missap"

# echo "$str" \
#   | grep -o . \        # split into individual characters
#   | sort \             # sort alphabetically
#   | uniq -c            # count repeating letters