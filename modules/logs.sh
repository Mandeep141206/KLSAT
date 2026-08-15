#!/bin/bash

clear

echo "============================="
echo "    LOG ANALYSIS MODULE"
echo "============================="

echo

echo "Recent System Logs:"

echo

journalctl -n 15 --no-pager

echo

echo "Recent Login History:"

echo

if command -v last >/dev/null 2>&1; then
    last -n 10

else
    echo "'last' command is not available on this system."

fi

echo

echo "Failed Login Attempts:"

echo

if [ -f /var/log/auth.log ]; then
    grep "Failed" /var/log/auth.log | tail -10

else
    echo "auth.log not found on this system."

fi
