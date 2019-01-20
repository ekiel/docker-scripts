#!/bin/bash
# Default ports + daemonized docker container
docker run -d \
    --name pihole \
    -p 53:53/tcp -p 53:53/udp \
    -p 67:67/udp \
    -p 80:80 \
    -p 443:443 \
    -v /nfs/dockerconfig/pihole/:/etc/pihole/ \
    -v /nfs/dockerconfig/pihole/dnsmasq.d/:/etc/dnsmasq.d/ \
    -e ServerIP=192.168.0.30 \
    -e WEBPASSWORD=password \
    -e TZ=US/Central \
    --restart=unless-stopped \
    pihole/pihole:v4.0_armhf
