#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Aditi
# Course: Open Source Software
# Description: This script checks important directories, shows their size,
# permissions, owner, and also verifies the config directory of chosen software.

# -------- Directories List --------
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "========================================="
echo "        Directory Audit Report"
echo "========================================="

# -------- Loop Through Directories --------
for DIR in "${DIRS[@]}"
do
    # Check if directory exists
    if [ -d "$DIR" ]; then
        
        # Get permissions, owner and group
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        
        # Get directory size
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    
    else
        echo "$DIR does not exist on this system"
    fi
done

echo ""
echo "-----------------------------------------"
echo " Checking Git Configuration Directory"
echo "-----------------------------------------"

# -------- Check Git Config Directory --------
GIT_CONFIG="$HOME/.gitconfig"

if [ -f "$GIT_CONFIG" ]; then
    PERMS=$(ls -l $GIT_CONFIG | awk '{print $1, $3, $4}')
    SIZE=$(du -h $GIT_CONFIG 2>/dev/null | cut -f1)
    
    echo "Git Config File: $GIT_CONFIG"
    echo "Permissions: $PERMS"
    echo "Size: $SIZE"
else
    echo "Git configuration file not found in home directory."
fi

echo ""
echo "========================================="
echo "        Script Execution Completed"
echo "========================================="
