#!/bin/bash

clear

echo "==========================="
echo " FILE PERMISSION SCANNER"
echo "==========================="

echo

echo "1. World Writable Files"

echo

find /home -type f -perm -002 2>/dev/null

echo

echo "2. SUID Files"

echo

find / -perm -4000 2>/dev/null | head -20

echo

echo "3. SGID Files"

echo

find / -perm -2000 2>/dev/null | head -20

echo

echo "4. Hidden Files"

echo

find /home -name ".*" 2>/dev/null | head -20

