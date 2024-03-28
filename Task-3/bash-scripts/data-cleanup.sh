#!/bin/bash

directory="/path/to/directory"

find "$directory" -type f -mtime +7 -exec rm {}\;
echo "old file removed"
