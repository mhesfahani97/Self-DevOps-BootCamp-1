#!/bin/bash

quotes=("Quote1" "Quote2" "Quote3")

random_index=$((RANDOM%${#quotes[@]}))
echo "random quote: ${quotes[$random_index]}"
