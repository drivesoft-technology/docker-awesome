#!/bin/sh

base=https://github.com/docker/machine/releases/download/v0.14.0 
curl -L $base/docker-machine-$(uname -s)-$(uname -m) >/usr/local/bin/docker-machine 
chmod +x /usr/local/bin/docker-machine
sudo install /tmp/docker-machine /usr/local/bin/docker-machine

docker-machine version
