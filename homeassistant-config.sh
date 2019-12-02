# Default ports + daemonized docker container
docker run -d \
    --name home-assistant \
    --net=host \
    -v /nfs/dockerconfig/home-assistant:/config \
    -v /etc/localtime:/etc/localtime:ro \
    --restart=unless-stopped \
    homeassistant/raspberrypi3-homeassistant
