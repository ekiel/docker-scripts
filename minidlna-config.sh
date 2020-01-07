#!/bin/bash
# Default of directory you run this from, update to where ever.
DOCKER_CONFIGS="$(pwd)"  


# Default ports + daemonized docker container
docker run -d \
    --name minidlna \
    --net=host \
    -v /nfs/data/media/videos:/data \
    -e FRIENDLY_NAME="pequod1-dlna" \
    -e MEDIA_DIR=/data \
    --restart=unless-stopped \
    forumi0721alpinearmhf/alpine-armhf-minidlna \
