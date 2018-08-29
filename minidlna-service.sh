docker service create \
--name minidlna-service \
--network=host \
-e FRIENDLY_NAME=moby-dlna \
-e TZ=US/Central \
-e MEDIA_DIR=/data \
--replicas=1 \
--no-resolve-image \
--mount type=bind,src=//nfs/data/media/videos/,dst=/data \
forumi0721alpinearmhf/alpine-armhf-minidlna
