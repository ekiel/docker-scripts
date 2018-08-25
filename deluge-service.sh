docker service create \
--name deluge-service \
--publish 58846:58846 \
--publish 8112:8112 \
--replicas=1 \
--no-resolve-image \
--mount type=bind,src=//nfs/dockerconfig/deluge/,dst=/config \
--mount type=bind,src=//nfs/downloads/,dst=/data \
lsioarmhf/deluge
