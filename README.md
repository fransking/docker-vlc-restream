# VLC Restream
Small container for restreaming video from IOT cameras on a central docker host

## Quick Start

This container image is available from the Docker Hub.

Assuming that you have Docker installed, run the following command:

````bash
docker run -d \
    -p 8081:8081 \
    -e SOURCE=YOUR_STREAMING_INPUT \
    -e DEST=YOUR_STREAMING_OUTPUT \
    --name vlc-restream fransking/vlc-restream:arm32v7
````

## License 

This project is licensed under the [BSD 2-Clause License](LICENSE).
