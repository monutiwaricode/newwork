#!/bin/bash

 

# Prompt the user for the number of days
read -p "Enter the number of days: " days

 

# Prompt the user for confirmation
read -p "Do you want to list files older than $days days? (y/n): " confirm

 

# Check if the user confirmed
if [ "$confirm" != "y" ]; then
    echo "Operation aborted."
    exit 1
fi

 

# List files older than n days
find / -type f -mtime +$days -exec ls -lh {} \; 2>/dev/null

 

# Print a completion message
echo "Operation completed."
