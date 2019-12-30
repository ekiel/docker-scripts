docker run -d \
  --name=duckdns \
  -e PUID=1000 `#optional` \
  -e PGID=1000 `#optional` \
  -e TZ=America/Chicago \
  -e SUBDOMAINS=yoursubdomain.duckdns.org \
  -e TOKEN=INSERT_YOUR_DUCK_DNS_TOKEN \
  -e LOG_FILE=false `#optional` \
  -v /nfs/dockerconfig/duckdns:/config \
  --restart unless-stopped \
  linuxserver/duckdns
