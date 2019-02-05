docker run -d \
--name syncthing \
--publish 22000:22000 \
--publish 8384:8384 \
--publish 21027:21027/udp \
-v /nfs/dockerconfig/syncthing/:/config \
-v /nfs/data/documents/corporate_files/:/data \
lsioarmhf/syncthing
