docker service create \
--name syncthing-service \
--publish 22000:22000 \
--publish 8384:8384 \
--publish 21027:21027/udp \
--replicas=1 \
--no-resolve-image \
--mount type=bind,src=//nfs/dockerconfig/syncthing/,dst=/config \
--mount type=bind,src=//nfs/syncthing-test/,dst=/data \
lsioarmhf/syncthing
