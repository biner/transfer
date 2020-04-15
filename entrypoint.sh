#!/bin/bash

set -e


curl -fsSL git.io/file-transfer | sh          
echo "Running command: ./transfer $platform $path $flags"
./transfer $platform $path $flags 
