#!/bin/bash

output_file="system_health_check.txt"

echo "system health check:" > "$output_file"
echo "Uptime: $(uptime)" >> "$output_file"  
echo "Load Average: $(cat /proc/loadavg)" >> "$output_file"  
echo "Memory Usage: $(free -hm)" >> "$output_file"  
echo "system health check results saved in $output_file"
