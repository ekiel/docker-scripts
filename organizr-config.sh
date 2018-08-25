#!/bin/bash
# Default of directory you run this from, update to where ever.
DOCKER_CONFIGS="$(pwd)"  


# Default ports + daemonized docker container
docker run -d \
    --name organizr \
    -p 8080:80 \
    -v /home/pi/docker_configs/organizr/:/config/ \
    --restart=unless-stopped \
    lsioarmhf/organizr
