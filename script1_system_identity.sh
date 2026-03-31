#!/bin/bash

# =================================================================
# Script 1: System Identity Report
# Name: Eshaani Sharma
# Registration number: 24BCE10392
# Course: Open Source Software | Software Choice: MySQL
# A friendly welcome script for my Linux setup
# =================================================================

# 1. Grabbing the system details 

# Reads the OS name directly from the system file
os=$(grep "PRETTY_NAME" /etc/os-release | cut -d'"' -f2)

# Grabs the core kernel version
kernel=$(uname -r)

# Finds out who you are right now
user=$(whoami)

# Finds where your files live
home_dir=$HOME

# Checks how long the machine has been running
uptime_status=$(uptime -p)

# Gets the current date and time in a nice format
right_now=$(date "+%A, %d %B %Y at %I:%M %p")

# 2. Saying hello

echo "--------------------------------------------------------"
echo "  Hello, $user! Welcome back to your machine."
echo "--------------------------------------------------------"
echo "  OS:      $os"
echo "  Kernel:  $kernel"
echo "  Home:    $home_dir"
echo "  Uptime:  $uptime_status"
echo "  Time:    $right_now"
echo "------------------------------------------------------"
echo "  This OS is open-source, covered by the GNU GPL."
echo "------------------------------------------------------"
