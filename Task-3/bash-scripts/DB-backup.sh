#!/bin/bash

DB-name="your-database"
output_file="database_backup_$(date +%Y%m%d).sql"

mysqldump -u username -p password "$DB-name" > "$output_file"

echo "DB backup created"
