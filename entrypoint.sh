#!/bin/sh

if [ $1 == "cvlc" ] 
then 
    exec /usr/bin/cvlc $SOURCE --loop --sout '#duplicate{dst=rtp{sdp=rtsp://:8081/1},dst=standard{access=http,mux=ts,dst=:8082}}'
fi 

exec "$@"