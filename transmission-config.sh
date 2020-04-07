#!/bin/bash
# Default of directory you run this from, update to where ever.
DOCKER_CONFIGS="$(pwd)"  


# Default ports + daemonized docker container
docker run -d \
    --name transmission \
    -p 9091:9091 \
    -p 51413:51413 \
    -p 51413:51413/udp \
    -v /nfs/dockerconfig/transmission:/config \
    -v /nfs/downloads:/downloads \
    -v /nfs/dockerconfig/transmission/watch:/watch \
    -e USER=USERNAME \
    -e PASS=PASSWORD \
    -e TZ=US/Central \
    --restart=always \
    linuxserver/transmission
