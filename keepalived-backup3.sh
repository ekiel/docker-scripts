docker run --name keepalived \
--cap-add=NET_ADMIN \
--net=host \
-d \
-e PRIORITY=100 \
-e UNICAST_PEERS='192.168.0.31 192.168.0.32 192.168.0.33 192.168.0.34' \
-e VIRTUAL_IPS=192.168.0.30/24 \
-e PASSWORD=sekret \
--restart=always \
rvben/rpi-keepalived
