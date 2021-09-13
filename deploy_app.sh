#!/bin/bash

#Hello World App Deployment Script
# run chmod +x deploy_app.sh

#Replace the build tag --> $TAG
# Run deployment script Eg: ./deploy_app.sh isurusyseng/aisight/aisight:$TAG

set -e

DOCKER_IMAGE=$1
CONAINER_NAME="hello_world"

# Check for docker image
if [[ $# -lt 1 ]] ; then
    echo '[ERROR] You must supply a Docker Image to pull'
    exit 1
fi

echo "Deploying Hello World to Docker Container"

#Check for any already running containers & stop it before starting a new one
if [ $(docker inspect -f '{{.State.Running}}' $CONAINER_NAME) = "true" ]; then
    docker stop hello_world
fi

echo "Starting Hello World using Docker Image name: $DOCKER_IMAGE"

docker run -d --rm=true -p 80:5000  --name hello_world $DOCKER_IMAGE

docker ps -a
