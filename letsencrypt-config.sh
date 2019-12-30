docker run -d \
  --name=letsencrypt \
  --cap-add=NET_ADMIN \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=America/Chicago \
  -e URL=YOURDOMAIN.COM \
  -e VALIDATION=duckdns \
  -e DUCKDNSTOKEN=YOUR_DUCK_DNS_TOKEN \
  -e EMAIL=insert@your.email \
  -e DHLEVEL=2048 `#optional` \
  -e ONLY_SUBDOMAINS=false `#optional` \
  -e EXTRA_DOMAINS=extradomains `#optional` \
  -e STAGING=false `#optional` \
  -p 8443:443 \
  -v /nfs/dockerconfig/letsencrypt:/config \
  --restart unless-stopped \
  linuxserver/letsencrypt
