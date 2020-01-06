#!/bin/bash
# Default of directory you run this from, update to where ever.
DOCKER_CONFIGS="$(pwd)"  


# Default ports + daemonized docker container
docker run -d \
    --name deluge \
    -p 58846:58846 \
    -p 8112:8112 \
    -v /nfs/dockerconfig/deluge/:/config \
    -v /nfs/downloads:/data \
    --restart unless-stopped \
    linuxserver/deluge

