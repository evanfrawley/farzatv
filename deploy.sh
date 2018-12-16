#!/usr/bin/env bash

if [ -z $DOCKER_USER ]; then echo "• DOCKER_USER must be a set variable.
• try running: export DOCKER_USER={user} && ./bash.sh"; exit 1; fi;

./build.sh

export CLIENT_IP=68.183.61.230

ssh -oStrictHostKeyChecking=no root@$CLIENT_IP "export DOCKER_USER=$DOCKER_USER; bash -s" < run.sh