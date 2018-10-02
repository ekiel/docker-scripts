docker service create \
--name watchtower-service \
--mode=global \
-e WATCHTOWER_CLEANUP=true \
-e WATCHTOWER_POLL_INTERVAL=3600 \
--no-resolve-image \
--mount type=bind,src=/var/run/docker.sock,dst=/var/run/docker.sock \
talmai/rpi-watchtower 7
