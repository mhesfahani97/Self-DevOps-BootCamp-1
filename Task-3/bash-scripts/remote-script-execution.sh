#!/bin/bash

remote_server="user@remote_server"
remote_script="/path/to/remote/script"

ssh "$remote_server" "bash -s" < "$remote_script"
echo "remote script executed"
