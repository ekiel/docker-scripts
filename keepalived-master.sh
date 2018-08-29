docker run --name keepalived \
--cap-add=NET_ADMIN \
--net=host \
-d \
-e PRIORITY=200 \
-e UNICAST_PEERS='192.168.0.31 192.168.0.32 192.168.0.33' \
-e VIRTUAL_IPS=192.168.0.30/24 \
-e PASSWORD=sekret \
-e STATE=MASTER \
rvben/rpi-keepalived
