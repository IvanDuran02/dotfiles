#!/bin/bash

# Grab the private IP (adjust interface if needed)
ip addr show | awk '/inet / && !/127.0.0.1/ && $NF != "lo" {print $2}' | cut -d/ -f1 | head -n 1
