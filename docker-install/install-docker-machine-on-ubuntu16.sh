#!/bin/sh

sudo curl -L https://github.com/docker/machine/releases/download/v0.14.0/docker-machine-`uname -s`-`uname -m` >/tmp/docker-machine
sudo install /tmp/docker-machine /usr/local/bin/docker-machine

docker-machine version
