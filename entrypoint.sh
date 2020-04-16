#!/bin/bash

set -e

curl -sL https://git.io/file-transfer | sh 


echo "Running command: ./transfer $INPUT_PLATFORM $INPUT_PATH $INPUT_FLAGS"
./transfer $INPUT_PLATFORM $INPUT_PATH $INPUT_FLAGS 2>&1 | tee wetransfer.log

echo "::warning file=wetransfer.com::$(cat wetransfer.log | grep https)"

time=$(date)
echo ::set-output name=uri::$time
