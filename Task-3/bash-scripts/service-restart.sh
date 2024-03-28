#!/bin/bash

service_name="your-service"

sudo systemctl restart "$service_name"
echo "$service_name restarted"
