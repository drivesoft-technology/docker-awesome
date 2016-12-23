#!/bin/sh

sudo mkdir -p /project-demo/web-server-layer-3/

sudo cp -a /build/docker-awesome/project-demo/web-server-layer-3 /project-demo

cd /project-demo/web-server-layer-3/

sudo docker-compose up -d
