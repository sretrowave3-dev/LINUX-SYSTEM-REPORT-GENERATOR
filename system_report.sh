#!/bin/bash

# Our robot's secret health diary
OUTPUT="system-report.txt"

# 1. Start a fresh page in the diary
echo "==========================================" > "$OUTPUT"
echo "ROBO HEALTH CHECK REPORT" >> "$OUTPUT"
echo "Checkup Time: $(date)" >> "$OUTPUT"
echo "==========================================" >> "$OUTPUT"
echo "" >> "$OUTPUT"

# Question 1: What is your name? (Hostname)
echo "Question 1: What is your name?" >> "$OUTPUT"
echo "Robo Name: $(hostname)" >> "$OUTPUT"
echo "" >> "$OUTPUT"

# Also print a friendly note to the terminal screen
echo " Checkup started! Robo name recorded in $OUTPUT."

# Question 2: What is your brain version? (Kernel version)
echo "Question 2: What is your brain version?" >> "$OUTPUT"
uname -r >> "$OUTPUT"
echo "" >> "$OUTPUT"

# checkup point 2
echo "3. Disk Usage:" >> $OUTPUT
df -h >> $OUTPUT
echo "" >> $OUTPUT

#checkup point 3
echo "4. Memory Usage:" >> $OUTPUT
free -h >> $OUTPUT
echo "" >> $OUTPUT

#checkup point 4
echo "5. Top Running Processes:" >> $OUTPUT
top -b -n 1 | head -n 15 >> $OUTPUT
echo "" >> $OUTPUT