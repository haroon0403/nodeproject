#!/bin/bash

application=$1
environment=$2
version=$3

imagename="0403456/${application}:${environment}-${version}"

echo "Building Image: ${imagename}"

#cp ../../war/*.war .

docker build --no-cache -t ${imagename} .

h the image to the IBS registry
export DOCKER_USERNAME='0403456'
export DOCKER_PASSWORD='Kubernetesjenk@1234'

docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD
docker push ${imagename}
docker rmi ${imagename}

