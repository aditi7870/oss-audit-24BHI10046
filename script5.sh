#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Aditi 
# Course: Open Source Software
# Description: This script collects user input and generates a personalized
# open-source manifesto saved in a text file.

echo "========================================="
echo "   Open Source Manifesto Generator"
echo "========================================="

echo "Answer the following questions:"
echo ""

# -------- User Input --------
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# -------- Date and Output File --------
DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# -------- Compose Manifesto --------
echo "----------------------------------------" > $OUTPUT
echo "        Open Source Manifesto" >> $OUTPUT
echo "----------------------------------------" >> $OUTPUT
echo "Date: $DATE" >> $OUTPUT
echo "" >> $OUTPUT

echo "I believe in the power of open source." >> $OUTPUT
echo "Every day, I use tools like $TOOL which represent collaboration and transparency." >> $OUTPUT
echo "To me, freedom means $FREEDOM — the ability to learn, modify, and share knowledge." >> $OUTPUT
echo "I aim to build $BUILD and contribute it to the community so others can benefit." >> $OUTPUT
echo "Open source is not just code, it is a philosophy of sharing and innovation." >> $OUTPUT

echo "" >> $OUTPUT
echo "----------------------------------------" >> $OUTPUT

# -------- Alias Concept (demonstration in comment) --------
# Example alias (not executed): alias runscript='./script5.sh'

# -------- Output --------
echo ""
echo "Manifesto successfully saved to $OUTPUT"
echo ""
echo "----- Generated Manifesto -----"
cat $OUTPUT

echo ""
echo "========================================="
echo "        Script Execution Completed"
echo "========================================="
