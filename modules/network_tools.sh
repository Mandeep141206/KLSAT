#!bin/bash

clear

echo "========================================="
echo "           NETWORK UTILITIES"
echo "========================================="

echo "1. Ping Host"
echo "2. DNS Lookup"
echo "3. Traceroute"
echo "4. Return"

read -p "Choose: " option

case $option in

1)

   read -p "Enter IP/Domain: " host
   ping -c 4 "$host"
   ;;

2)


   read -p "Enter Domain: " domain
   nslookup "$domain"
   ;;

3)


   read -p "Enter IP/Domain: " host
   traceroute "$host"
   ;;

4)


   break
   ;;

*)

   echo "Invalid Choice"
   ;;

esac


