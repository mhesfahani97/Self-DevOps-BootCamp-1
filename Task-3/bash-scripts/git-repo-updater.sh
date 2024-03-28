#!/bin/bash

git-repo="/path/to/your/repo"

cd "$git-repo"
git pull origin master
echo "git repository updated"
