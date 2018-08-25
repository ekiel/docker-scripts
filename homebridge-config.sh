#!/bin/bash
# Default of directory you run this from, update to where ever.
DOCKER_CONFIGS="$(pwd)"  


# Default ports + daemonized docker container
docker run -d \
    --name homebridge \
    --net=host \
    -v /nfs/dockerconfig/homebridge:/homebridge \
    -e PACKAGES=homebridge-smartthings \
    -e TZ=US/Central \
    -e HOMEBRIDGE_CONFIG_UI=1 \
    -e HOMEBRIDGE_CONFIG_UI_PORT=8080 \
    --restart=unless-stopped \
    oznu/homebridge:raspberry-pi
