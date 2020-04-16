#!/bin/bash

set -e

curl -sL https://git.io/file-transfer | sh 


echo "Running command: ./transfer $INPUT_PLATFORM $INPUT_PATH $INPUT_FLAGS"
./transfer $INPUT_PLATFORM $INPUT_PATH $INPUT_FLAGS  2>&1 | tee uri.log
echo "Running command END: ./transfer $INPUT_PLATFORM $INPUT_PATH $INPUT_FLAGS"

echo "::warning file=wetransfer.com::$(cat uri.log | grep https)"

uri=$(cat uri.log | grep https)
echo ::set-output name=uri::$uri
