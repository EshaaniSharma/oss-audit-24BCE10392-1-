#!/bin/bash

# =================================================================
# Script 3: Simple MySQL Directory Auditor
# Author: Eshaani Sharma | Roll: 24BCE10392
# Course: Open Source Software | Software Choice: MySQL
# Description: Loops through key system directories and
#              reports their size, owner, and permissions
#              Checks the ownership, permissions, and disk space of MySQL folders.
# =================================================================

echo "Starting MySQL Directory Audit..."
echo "-------------------------------------------"

# 1. List the important directories to check
# /var/lib/mysql (databases), /etc (configs), /var/log (logs)
mysql_folders="/var/lib/mysql /etc /var/log"

# 2. Loop through each folder one by one
for dir in $mysql_folders; do
    
    # Check if the folder actually exists on this system
    if [ -d "$dir" ]; then
        echo "Folder: $dir"
        
# 3. Grab permissions (column 1) and owner (column 3) using ls and awk
        perms=$(ls -ld "$dir" | awk '{print $1}')
        owner=$(ls -ld "$dir" | awk '{print $3}')
        
# 4. Grab the disk space usage percentage using df and awk
        # NR==2 tells awk to grab data from the second line of the output
        space_used=$(df -h "$dir" | awk 'NR==2 {print $5}')
        
        # Print the extracted details
        echo "  -> Owner: $owner"
        echo "  -> Perms: $perms"
        echo "  -> Drive: $space_used full"
    else
        echo "Folder: $dir"
        echo "  -> Status: Not found on this machine."
    fi
    
    echo "-------------------------------------------"
done
