#!/usr/bin/env bash

if [ -z $DOCKER_USER ]; then echo "• DOCKER_USER must be a set variable.
• try running: export DOCKER_USER={user} && ./bash.sh"; exit 1; fi;

echo "*******************************************************"
echo "**** Building farza.tv"
echo "*******************************************************"

yarn prebuild
yarn build
docker build -t $DOCKER_USER/farzatv .
docker push $DOCKER_USER/farzatv
sleep 5