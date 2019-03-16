docker service create \
--name heimdall-service \
--publish 9090:80 \
--replicas=1 \
-e PGID=1000 \
-e PUID=1000 \
--no-resolve-image \
--mount type=bind,src=//nfs/dockerconfig/heimdall/,dst=/config \
linuxserver/heimdall
