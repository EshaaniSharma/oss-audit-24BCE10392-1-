#!/bin/bash
# ============================================================
# Script 5: Open Source Manifesto Generator
# Author: Eshaani Sharma | Roll: 24BCE10392
# Course: Open Source Software | Software Choice: Git
# Description: Asks the user 3 questions interactively and
#              generates a personalised open source manifesto
# ============================================================ 

echo "Let's write the Open Source Manifesto!"
echo "Answer these three quick questions:"
echo ""

# 1. Get user input using the 'read' command
read -p "1. Name an open-source tool you use every day (like MySQL): " tool
read -p "2. In one word, what does 'freedom' mean to you? " freedom
read -p "3. Name one thing you would love to build and share freely: " build

echo ""

# 2. Set up the current date and the filename
today=$(date '+%B %d, %Y')
output_file="manifesto_$(whoami).txt"

# 3. Write the paragraph to the file
# We use > first to create a fresh file, then >> to add lines to it.

echo "My Open Source Manifesto - $today" > "$output_file"
echo "" >> "$output_file"
echo "I believe technology should empower people. Everyday tools like $tool" >> "$output_file"
echo "remind me that the best software is built by communities. To me, open" >> "$output_file"
echo "source represents true $freedom. I want to give back to this community," >> "$output_file"
echo "and one day I hope to build $build and share it freely with the world." >> "$output_file"
echo "" >> "$output_file"
echo "Signed, $(whoami)" >> "$output_file"

# 4. Show the final result
echo "Saved successfully to $output_file! Here's what it says:"
echo "--------------------------------------------------------"
cat "$output_file"
