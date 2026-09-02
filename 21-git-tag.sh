#!/bin/bash

# echo "create tag for release"

ls /tmp

STATUS=$?

if [ $STATUS -eq 0 ]
then
    echo "Command successful"
else
    echo "Command failed"
fi