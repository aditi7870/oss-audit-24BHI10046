#!/bin/bash
# Script 4: Log File Analyzer
# Author: Aditi
# Course: Open Source Software
# Description: This script reads a log file, counts keyword occurrences,
# retries if file is empty, and shows last 5 matching lines.

# -------- Input Arguments --------
LOGFILE=$1
KEYWORD=${2:-"error"}   # Default keyword = error
COUNT=0

echo "========================================="
echo "          LOG FILE ANALYZER"
echo "========================================="

# -------- Check if file exists --------
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

# -------- Retry if file is empty (do-while style) --------
ATTEMPTS=0
MAX_ATTEMPTS=3

while [ ! -s "$LOGFILE" ] && [ $ATTEMPTS -lt $MAX_ATTEMPTS ]
do
    echo "Log file is empty. Retrying... ($((ATTEMPTS+1)))"
    sleep 2
    ATTEMPTS=$((ATTEMPTS+1))
done

if [ ! -s "$LOGFILE" ]; then
    echo "Log file is still empty after retries. Exiting."
    exit 1
fi

# -------- Read file line by line --------
while IFS= read -r LINE
do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

# -------- Display Result --------
echo ""
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"

echo ""
echo "----- Last 5 Matching Lines -----"
grep -i "$KEYWORD" "$LOGFILE" | tail -5

echo ""
echo "========================================="
echo "        Script Execution Completed"
echo "========================================="
