#!/bin/bash

if [ $(arch) == "x86_64" ]
then
    docker_arch="amd64"
elif [ $(arch) == "armv7l" ]
then
    docker_arch="arm32v7"
else
   echo "$(arch) not supported"
   exit -1
fi


docker stop vlc-restream
docker rm vlc-restream

docker run \
    -p $1:8554 \
    -e SOURCE=$2 \
    -e DEST=$3 \
    --name vlc-restream fransking/vlc-restream:$docker_arch
