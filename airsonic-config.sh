docker run \
  --name=airsonic \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=America/Chicago \
  -p 4040:4040 \
  -v /nfs/dockerconfig/airsonic:/config \
  -v /nfs/data/media/music:/music \
  -v /nfs/data/media/music/_playlists:/playlists \
  -v /nfs/data/media/music/_podcasts:/podcasts \
  --restart unless-stopped \
  linuxserver/airsonic
