#!/bin/bash
# Script 1: System Identity Report
# Author: Aditi
# Course: Open Source Software
# Description: This script displays basic system information like a welcome screen

# -------- Variables --------
STUDENT_NAME="Aditi"
SOFTWARE_CHOICE="Git"

# -------- System Information --------
KERNEL=$(uname -r)              # Get kernel version
USER_NAME=$(whoami)            # Get current logged-in user
HOME_DIR=$HOME                 # Get user's home directory
UPTIME=$(uptime -p)            # Get system uptime
DATE=$(date)                   # Get current date and time
DISTRO=$(lsb_release -d 2>/dev/null | cut -f2)  # Get Linux distribution name

# -------- Display Output --------
echo "==========================================="
echo "     Open Source Audit — $STUDENT_NAME"
echo "==========================================="

echo "Chosen Software : $SOFTWARE_CHOICE"
echo "-------------------------------------------"

echo "Linux Distribution : $DISTRO"
echo "Kernel Version     : $KERNEL"

echo "-------------------------------------------"
echo "User Name          : $USER_NAME"
echo "Home Directory     : $HOME_DIR"

echo "-------------------------------------------"
echo "System Uptime      : $UPTIME"
echo "Current Date & Time: $DATE"

echo "-------------------------------------------"
echo "License Info       : This Linux system is based on open-source licensing (typically GNU GPL), which allows users to run, study, modify, and share software freely."

echo "==========================================="
echo "         Script Execution Completed"
echo "==========================================="
