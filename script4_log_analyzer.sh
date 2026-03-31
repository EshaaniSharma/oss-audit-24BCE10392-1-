#!/bin/bash

# ============================================================
# Script 4: Log File Analyzer
# Author: Eshaani Sharma | Roll: 24BCE10392
# Course: Open Source Software | Software Choice: Git
# Description: Reads a log file, counts keyword occurrences,
#              and shows the last 5 matching lines
# A simple script to count and show specific words (like errors) in a log file.
# Usage: ./log_analyzer.sh /var/log/mysql/error.log "warning"
# ============================================================

logfile=$1
# Default to searching for "error" if a second word isn't provided
keyword=${2:-"error"} 
count=0

# --- 1. Do-while style retry ---
# Keep asking the user for a file until they give us one that exists and isn't empty (-s)
while [ ! -s "$logfile" ]; do
    echo "It looks like '$logfile' is either missing or completely empty."
    read -p "Type the path to a valid log file: " logfile
done

echo "Scanning $logfile for the word '$keyword'..."
echo "------------------------------------------------"

# --- 2. While-read loop with an if-then ---
# Read the log file line by line
while read -r line; do
    # Check if the current line contains our keyword (ignoring case)
    if echo "$line" | grep -iq "$keyword"; then
        count=$((count + 1))
    fi
done < "$logfile"

# --- 3. Print the summary ---
echo "Done! Found '$keyword' $count times."

# --- 4. Print the last 5 matching lines ---
if [ "$count" -gt 0 ]; then
    echo ""
    echo "Here are the last 5 occurrences to help you troubleshoot:"
    # Filter the file for the keyword, then grab just the bottom 5 lines
    grep -i "$keyword" "$logfile" | tail -n 5
fi
