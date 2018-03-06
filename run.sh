#!/bin/sh
docker run -it --rm -p 8000:8000 --name icecast \
  -e RELAY_IP=198.50.156.36 \
  -e RELAY_PORT=8708 \
  -e RELAY_PATH=/stream \
  -e LOCAL_PATH=/stream \
  -e HOSTNAME=example.com \
  sonm/icecast
