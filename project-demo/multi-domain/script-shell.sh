#!/bin/sh

sudo mkdir -p /multi-domain

sudo cp -a /build/docker-awesome/project-demo/multi-domain /multi-domain

cd /multi-domain

sudo docker-compose up -d