#!/bin/sh

sudo mkdir -p /project-demo/load-balancing-layer-4/

sudo cp -a /build/docker-awesome/project-demo/load-balancing-layer-4 /project-demo

cd /project-demo/load-balancing-layer-4/

sudo docker-compose up -d
