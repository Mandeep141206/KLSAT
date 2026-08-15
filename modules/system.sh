#!/bin/bash

echo "System Information"

echo

hostnamectl

echo

echo "Kernel"

uname -r

echo

echo "CPU"

lscpu

echo

echo "Memory"

free -h

echo

echo "Disk"

df -h
