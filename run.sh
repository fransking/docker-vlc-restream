#!/bin/sh

docker stop vlc-restream
docker rm vlc-restream

docker run -d \
    -p 8081:8081 \
    -p 8082:8082 \
    -e SOURCE=$1 \
    --name vlc-restream fransking/vlc-restream:arm32v7
