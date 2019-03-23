docker run \
  --name=airsonic \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=America/Chicago \
  -p 4040:4040 \
  -v /dockerconfig/airsonic:/config \
  -v /data/media/music:/music \
  -v /data/media/music/_playlists:/playlists \
  -v /data/media/music/_podcasts:/podcasts \
  --restart unless-stopped \
  linuxserver/airsonic
