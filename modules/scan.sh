#!/bin/bash

clear
echo "===================================="
echo "PORT SCANNER"
echo "===================================="

echo

read -p "Enter Target IP: " target

echo

echo "Scanning $target..."

nmap -sV "$target" | tee history/nmap_$(date +%F_%H-%M-%S).txt
