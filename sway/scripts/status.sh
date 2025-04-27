#!/bin/bash

while true; do
    IP=$(ip addr show | awk '/inet / && !/127.0.0.1/ && $NF != "lo" {print $2}' | cut -d/ -f1 | head -n 1)
    TIME=$(date +'%Y-%m-%d %H:%M:%S')
    echo " $IP | $TIME"
    sleep 1
done
