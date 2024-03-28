#!/bin/bash

file_to_compress="pass-gen.sh"

gzip "$file_to_compress"
echo -e "filecompressed\n$file_to_compress.gz"
