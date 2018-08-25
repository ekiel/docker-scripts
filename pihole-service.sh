docker service create \
--name pihole-service \
-e ServerIP=192.168.0.35 \
-e WEBPASSWORD=pihole \
-e TZ=US/Central \
--publish 53:53/tcp \
--publish 53:53/udp \
--publish 80:80 \
--replicas=1 \
--no-resolve-image \
--mount type=bind,src=//nfs/dockerconfig/pihole/,dst=/etc/pihole \
--mount type=bind,src=//nfs/dockerconfig/pihole/dnsmasq.d,dst=/dnsmasq.d \
pihole/pihole:v4.0_armhf
