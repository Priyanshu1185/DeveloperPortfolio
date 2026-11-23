#!/bin/bash

# Author: Priyanshu Singh
# Roll Number: 2601010126
# Script: System Information Report

echo "=========================================="
echo "       SYSTEM INFORMATION REPORT"
echo "=========================================="
echo "Name: Priyanshu Singh"
echo "Roll Number: 2601010126"
echo "Date: $(date)"
echo ""

echo "----- CPU INFORMATION -----"
echo "CPU Model: $(sysctl -n machdep.cpu.brand_string)"
echo "CPU Cores: $(sysctl -n hw.ncpu)"
echo ""

echo "----- MEMORY INFORMATION -----"
TOTAL=$(sysctl -n hw.memsize)
TOTAL_GB=$(awk -v t="$TOTAL" 'BEGIN {printf "%.2f GB",t/1024/1024/1024}')
PAGE_SIZE=$(vm_stat | head -1 | sed -E 's/.*page size of ([0-9]+) bytes.*/\1/')
USED_GB=$(vm_stat | awk -v p="$PAGE_SIZE" '
/Pages active:/ {a=$3; gsub(/\./,"",a)}
/Pages wired down:/ {w=$4; gsub(/\./,"",w)}
/Pages occupied by compressor:/ {c=$5; gsub(/\./,"",c)}
END {printf "%.2f GB",(a+w+c)*p/1024/1024/1024}
')
echo "Total Memory: $TOTAL_GB"
echo "Used Memory (estimated): $USED_GB"
echo ""

echo "----- TOP 3 PROCESSES BY CPU -----"
ps -Ao pid,comm,%cpu | sort -k3 -nr | head -4 | tail -3
echo ""

echo "=========================================="
echo "Report generated successfully."
echo "=========================================="
