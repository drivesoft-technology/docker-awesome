#!/bin/sh

sudo mkdir -p /project-demo/web-server-lemp/

sudo mv -R /build/docker-awesome/project-demo/web-server-lemp/ /project-demo/web-server-lemp/

cd /project-demo/web-server-lemp/

sudo docker-compose up -d
