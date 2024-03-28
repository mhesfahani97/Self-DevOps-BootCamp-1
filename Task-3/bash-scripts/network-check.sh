#!/bin/bash

host="digikala.com"

if ping -c 1 "$host" &>/dev/null; then
    echo "network is up"
else
    echo "network is down"
fi
