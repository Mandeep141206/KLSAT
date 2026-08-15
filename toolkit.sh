#!/bin/bash

GREEN='\033[0;32m'
RED='\033[0;31m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
NC='\033[0m'

while true
do

clear

echo -e "${GREEN}"
echo "===================================="
echo "KALI SECURITY TOOLKIT "
echo "===================================="
echo -e "${NC}"
echo -e "${CYAN}User         : $(whoami)${NC}"
echo -e "${CYAN}Hostname     : $(hostname)${NC}"
echo -e "${CYAN}Date         : $(date)${NC}"

echo


echo -e "${YELLOW}1.${NC}  System Information"

echo -e "${YELLOW}2.${NC}  Network Discovery"

echo -e "${YELLOW}3.${NC}  Port Scanner"

echo -e "${YELLOW}4.${NC}  Running Processes"

echo -e "${YELLOW}5.${NC}  Log Analysis"

echo -e "${YELLOW}6.${NC}  File Permission Scanner"

echo -e "${YELLOW}7.${NC}  Hash Generator"

echo -e "${YELLOW}8.${NC}  Generate Report"

echo -e "${YELLOW}9.${NC}  Network Utilities"

echo -e "${YELLOW}10.${NC} Help"

echo -e "${RED}11.${NC} Exit"

read -p "Choice: " choice

case $choice in

1)

  bash modules/system.sh

  ;;

2)

  bash modules/network.sh

  ;;

3)

  bash modules/scan.sh

  ;;

4)

  bash modules/process.sh

  ;;


5)

  bash modules/logs.sh

  ;;


6)

  bash modules/permissions.sh

  ;;

7)

  bash modules/hash.sh

  ;;

8)

  bash modules/report.sh

  ;;

9)

  bash modules/network_tools.sh

  ;;

10)

  bash modules/help.sh

  ;;

11)

  echo "Thank you for using KLSAT!"

  break

  ;;

*)

  echo "Invalid Choice"

  ;;

esac

echo
read -p "Press Enter to return to the main menu..."

done
