docker run -d \
--name=heimdall \
-v /nfs/dockerconfig/heimdall:/config \
-p 9090:80 \
-e TZ=US/Central \
linuxserver/heimdall
