#!/bin/sh

if [ $1 == "cvlc" ] 
then 
    exec /usr/bin/cvlc $SOURCE --loop --sout $DEST
fi 

exec "$@"