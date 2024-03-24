#!/bin/bash

packages=("package-1" "package-2" "package-3")

for package in "${packages[@]}"; do
    sudo apt-get update
    sudo apt-get install "$package" -y
done

echo "Packages Installed succesfully."
