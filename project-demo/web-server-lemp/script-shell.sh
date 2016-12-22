#!/bin/sh

sudo mkdir -p /project-demo/web-server-lemp/

sudo cp -a /build/docker-awesome/project-demo/web-server-lemp/ /project-demo/web-server-lemp/

cd /project-demo/web-server-lemp/

sudo docker-compose up -d
