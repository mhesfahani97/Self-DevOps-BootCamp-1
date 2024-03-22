#!/bin/bash

file="file.txt"

openssl enc -aes-256-cbc -salt -in "$file" -out "$file.enc"
echo "file encrypted: $file.enc"
