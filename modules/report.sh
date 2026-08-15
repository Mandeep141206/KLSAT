
#!bin/bash

clear

REPORT="reports/report_$(date +%F_%H-%M-%S).txt"

echo "Generating Report..."

echo "===============================================" > "$REPORT"
echo " KALI SECURITY TOOLKIT REPORT" >> "$REPORT"
echo "===============================================" >> "$REPORT"

echo >> "$REPORT"

echo "Date: $(date)" >> "$REPORT"
echo "Hostname: $(hostname)" >> "$REPORT"
echo "User: $(whoami)" >> "$REPORT"

echo >> "$REPORT"

echo "================= SYSTEM ==================" >> "$REPORT"
hostnamectl >> "$REPORT"

echo >> "$REPORT"

echo "=================== NETWORK ==================" >> "$REPORT"
ip addr >> "$REPORT"

echo >> "$REPORT"

echo "==================== RUNNING PROCESSES ===================" >> "$REPORT"
ps aux | head -20 >> "$REPORT"

echo >> "$REPORT"

echo "================= DISK ===================" >> "$REPORT"
df -h >> "$REPORT"

echo >> "$REPORT"

echo "================ MEMORY USAGE =================" >> "$REPORT"
free -h >> "$REPORT"

echo >> "$REPORT"

echo "======================= KERNEL VERSION ========================" >>  "$REPORT"
uname -r >> "$REPORT"

echo >> "$REPORT"

echo "===================== CURRENT USER ==========================" >> "$REPORT"
whoami >> "$REPORT"

echo >> "$REPORT"

echo "=================== HOSTNAME ========================" >> "$REPORT"
hostname >> "$REPORT"

echo
echo "Report Saved Successfully!"

echo
echo "Location:"
echo "$REPORT"
