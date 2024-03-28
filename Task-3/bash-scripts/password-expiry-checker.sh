#!/bin/bash

IFS=$'\n'

for user in $(cat /etc/passwd | grep "/bin/bash" | cut -d: -f1); do
    password_expires=$(chage -l "$user" | grep "Password expires" | awk '{print $4}')
    echo "user: $user ----- password expires: $password_expires"
done

unset IFS
