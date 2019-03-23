docker run -d \
  --name=couchpotato \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=America/Chicago \
  -e UMASK_SET=022 \
  -p 5050:5050 \
  -v /dockerconfig/couchpotato:/config \
  -v /downloads/torrents:/downloads \
  -v /downloads:/movies \
  --restart unless-stopped \
  linuxserver/couchpotato
