#!/bin/sh

docker run docker/compose:1.19.0-rc1 version

echo alias docker-compose="'"'docker run -v /var/run/docker.sock:/var/run/docker.sock -v "$PWD:/rootfs/$PWD" -w="/rootfs/$PWD" docker/compose:1.19.0-rc1'"'" >> ~/.bashrc
source ~/.bashrc
