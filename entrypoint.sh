#!/bin/bash

set -e

if [ -z "$INPUT_ARGS" ]; then
  echo 'Required Args parameter'
  exit 1
fi

echo "Running command: ./transfer $platform $path $flags"

./transfer $platform $path $flags | tee wetransfer.log
