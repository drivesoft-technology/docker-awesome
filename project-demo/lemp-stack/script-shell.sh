#!/bin/sh

sudo mkdir -p /project-demo/lemp-stack/

sudo cp -a /build/docker-awesome/project-demo/lemp-stack /project-demo

cd /project-demo/lemp-stack/

sudo docker-compose up -d