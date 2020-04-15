#!/bin/bash

set -e

if [ -z "$INPUT_ARGS" ]; then
  echo 'Required Args parameter'
  exit 1
fi

curl -fsSL git.io/file-transfer | sh          
echo "Running command: ./transfer $platform $path $flags"
./transfer $platform $path $flags 
