#!/bin/bash

# Our robot's secret health diary
OUTPUT="system-report.txt"

# 1. Start a fresh page in the diary
echo "==========================================" > "$OUTPUT"
echo "ROBOT HEALTH CHECK REPORT" >> "$OUTPUT"
echo "Checkup Time: $(date)" >> "$OUTPUT"
echo "==========================================" >> "$OUTPUT"
echo "" >> "$OUTPUT"

# Question 1: What is your name? (Hostname)
echo "Question 1: What is your name?" >> "$OUTPUT"
echo "Robot Name: $(hostname)" >> "$OUTPUT"
echo "" >> "$OUTPUT"

# Also print a friendly note to the terminal screen
echo " Checkup started! Robot name recorded in $OUTPUT."