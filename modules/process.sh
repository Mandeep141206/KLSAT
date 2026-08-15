
#!/bin/bash

clear

echo "==================================="
echo "      RUNNING PROCESSES"
echo "==================================="

echo

echo "Top Running Processes:"

echo

ps aux | head -20

echo

echo "Top CPU Usage:"

echo

ps aux --sort=-%cpu | head -10

echo

echo "Top Memory Usage:"

echo

ps aux --sort=-%mem | head -10
