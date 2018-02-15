#!/bin/sh
set -e

# Load the version number
. "`dirname $0`/VERSION"

# Login if user/password present
if [ ! -z "$DOCKER_USER" ] && [ ! -z "$DOCKER_PASS" ]; then
  docker login -u $DOCKER_USER -p $DOCKER_PASS
fi

# Build with docker
docker build -t killrvideo/killrvideo-dse:$DOCKER_BUILD_TAG .
