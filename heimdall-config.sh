docker create \
--name=heimdall \
-v /home/pi/docker_configs/heimdall:/config \
-p 80:80 -p 443:443 \
-e TZ=US/Central \
linuxserver/heimdall
