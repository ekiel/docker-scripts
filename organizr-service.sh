docker service create \
--name organizr-service \
--publish 9090:80 \
--replicas=1 \
-e PGID=1000 \
-e PUID=1000 \
--no-resolve-image \
--mount type=bind,src=//nfs/dockerconfig/organizr/,dst=/config \
lsioarmhf/organizr
