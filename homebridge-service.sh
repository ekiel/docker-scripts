docker service create \
--name homebridge-service \
--network=host \
-e PACKAGES=homebridge-smartthings \
-e TZ=US/Central \
-e HOMEBRIDGE_CONFIG_UI=1 \
-e HOMEBRIDGE_CONFIG_UI_PORT=8080 \
--replicas=1 \
--no-resolve-image \
--mount type=bind,src=//nfs/dockerconfig/homebridge/,dst=/homebridge \
oznu/homebridge:raspberry-pi
