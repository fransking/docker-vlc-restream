# VLC Restream
Small container for restreaming video from IOT cameras on a central docker host

## Quick Start

This container image is available from the Docker Hub.

Assuming that you have Docker installed, run the following command:

````bash
docker run -d \
    -p 8081:8081 \
    -p 8082:8082 \
    -e SOURCE=YOUR_STREAMING_SOURCE_URL \
    --name vlc-restream fransking/vlc-restream-arm32v7:latest
````

## License 

This project is licensed under the [BSD 2-Clause License](LICENSE).
