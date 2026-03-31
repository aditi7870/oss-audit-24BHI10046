#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Aditi
# Course: Open Source Software
# Description: This script checks if a package is installed, displays its details,
# and prints a short philosophy note using a case statement.

# -------- Package Name --------
PACKAGE="git"   # Chosen software

echo "========================================="
echo "        FOSS PACKAGE INSPECTOR"
echo "========================================="

# -------- Check if package is installed --------
# Using dpkg (for Ubuntu/Debian systems)
if dpkg -l | grep -q "^ii  $PACKAGE"; then
    echo "$PACKAGE is installed on this system."
    
    echo ""
    echo "----- Package Information -----"
    # Display version, architecture and description
    dpkg -l | grep "^ii  $PACKAGE"
    
    echo ""
    echo "----- Detailed Info -----"
    apt show $PACKAGE 2>/dev/null | grep -E 'Version|Maintainer|Description|Homepage'

else
    echo "$PACKAGE is NOT installed on this system."
fi

echo ""
echo "----- Open Source Philosophy Note -----"

# -------- Case Statement --------
case $PACKAGE in
    git)
        echo "Git: A distributed version control system that enables collaboration and open sharing of code."
        ;;
    apache2)
        echo "Apache: A powerful open-source web server that helped build the modern internet."
        ;;
    mysql)
        echo "MySQL: An open-source database system used by millions of applications worldwide."
        ;;
    vlc)
        echo "VLC: A free and open multimedia player that supports almost every file format."
        ;;
    firefox)
        echo "Firefox: An open-source browser focused on privacy and a free web."
        ;;
    *)
        echo "Unknown package: Still represents the spirit of open-source collaboration and freedom."
        ;;
esac

echo ""
echo "========================================="
echo "        Script Execution Completed"
echo "========================================="
