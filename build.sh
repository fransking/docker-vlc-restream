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

docker build \
--no-cache \
--build-arg docker_arch=$docker_arch \
-t fransking/vlc-restream:$docker_arch .
docker image inspect fransking/vlc-restream:$docker_arch --format='{{.Size}}'
