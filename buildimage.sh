#!/bin/bash

application=$1
environment=$2
version=$3

imagename="0403456/${application}:${environment}-${version}"

echo "Building Image: ${imagename}"

#cp ../../war/*.war .

docker build --no-cache -t ${imagename} .



