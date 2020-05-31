#!/bin/bash

docker build -t fransking/vlc-restream:arm32v7 .
docker image inspect fransking/vlc-restream:arm32v7 --format='{{.Size}}'
