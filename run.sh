#!/usr/bin/env bash

if [ -z $DOCKER_USER ]; then echo "DOCKER_USER must be a set variable."; exit 1; fi;

docker pull $DOCKER_USER/farzatv
docker rm -f farzatv
docker run -d \
--name farzatv \
-p 80:80 -p 443:443 \
-v /etc/letsencrypt:/etc/letsencrypt:ro \
$DOCKER_USER/farzatv