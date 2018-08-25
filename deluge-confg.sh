#!/bin/bash
# Default of directory you run this from, update to where ever.
DOCKER_CONFIGS="$(pwd)"  


# Default ports + daemonized docker container
docker run -d \
    --name deluge \
    -p 58846:58846 \
    -p 8112:8112 \
    -v /home/pi/docker_configs/deluge/:/config \
    -v /home/pi/downloads:/data \
    lsioarmhf/deluge
