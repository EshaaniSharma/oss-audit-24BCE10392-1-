#!/bin/bash

# Script 2: FOSS Package Inspector
# Author: Eshaani Sharma | Roll: 24BCE10392
# Course: Open Source Software | Software Choice: MySQL

# 1. Set the target package to MySQL
PACKAGE="mysql" 

echo "Checking package: $PACKAGE..."
echo "-------------------------------------------"

# 2. Check if the package is installed using rpm
if rpm -q "$PACKAGE" &>/dev/null; then
    echo "[+] $PACKAGE is installed."
    echo ""
    echo "MySQL Package Details:"
# 3. Find version, license, and summary using pipe with grep
    rpm -qi "$PACKAGE" | grep -E 'Version|License|Summary'
else
    echo "[-] $PACKAGE is NOT installed."
    echo "    (Hint: On some systems, the package is named 'mysql-server'."
    echo "     Try changing the PACKAGE variable at the top to check!)"
fi

echo "------------------------------------------"

# 4. Print the philosophy note using a case statement
case "$PACKAGE" in
    mysql|mysql-server) 
        echo "Philosophy: MySQL - Open source at the heart of millions of apps." 
        ;;
    *) 
        echo "FOSS: Free and open-source software empowers the world!" 
        ;;
esac
