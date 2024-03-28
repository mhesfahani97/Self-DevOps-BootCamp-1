#!/bin/bash

database_name="your-database"
days_to_keep=7

find /path/to/database/backups-name/"$database_name*.sql" -mtime +"$days_to_keep" -exec rm {}\;
echo "old database backups cleaned up."
