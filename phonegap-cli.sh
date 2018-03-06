#!/usr/bin/env sh

CONTAINER_NAME=idotta/phonegap
HOST_DIR="$1"

shift

docker run \
       --privileged \
       -p 3000:3000 \
       -v $HOST_DIR:/data \
       -e NODE_ENV=production \
       $CONTAINER_NAME \
       phonegap \
       "$@"