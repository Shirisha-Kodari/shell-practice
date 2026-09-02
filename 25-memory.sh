#!/bin/bash


# echo "CPU Usage:"
# top -bn1 | grep "Cpu(s)"

# echo "Memory Usage:"
# free -h



CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print 100-$8}')
MEMORY=$(free | awk '/Mem:/ {print $3/$2*100}')

echo "CPU Usage: $CPU%"
echo "Memory Usage: $MEMORY%"