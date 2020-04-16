#!/bin/bash

set -e

curl -sL https://git.io/file-transfer | sh 


echo "Running command: ./transfer $INPUT_PLATFORM $INPUT_PATH $INPUT_FLAGS"
./transfer $INPUT_PLATFORM $INPUT_PATH $INPUT_FLAGS 2>&1 | tee wetransfer.log

time=$(date)
echo ::set-output name=uri::$time
