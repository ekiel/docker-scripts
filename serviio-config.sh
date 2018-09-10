docker create \
--name=serviio \
-v /etc/localtime:/etc/localtime:ro \
-v /home/pi/docker_configs/serviio:/config \
-v /nfs/data/media/videos:/media \
-e PGID=1000 -e PUID=1000 \
--net=host \
lsioarmhf/serviio
