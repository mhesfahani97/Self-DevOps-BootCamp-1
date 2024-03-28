#!/bin/bash

output_files="system_info.txt"

echo "system information" > "$output_files"
echo "---------------" >> "$output_files"
echo "hostname: $(hostname)" >> "$output_files"
echo "OS: $(uname -a)" >> "$output_files"
echo "Memory: $(free -h)" >> "$output_files"
echo "Disk Space: $(df -h)" >> "$output_files"
echo "system info saved to $output_files"
