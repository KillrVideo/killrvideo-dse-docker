#!/bin/sh

# Load the version number
source "`dirname $0`/VERSION"

# Build with docker
docker build -t killrvideo/killrvideo-dse:$DOCKER_BUILD_TAG .