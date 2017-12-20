#!/bin/sh

sudo apt-get install apt-transport-https ca-certificates -y

sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo "deb https://apt.dockerproject.org/repo ubuntu-xenial main" | sudo tee /etc/apt/sources.list.d/docker.list

sudo apt-get update && sudo apt-cache policy docker-ce

sudo apt-get install -y docker-ce

sudo groupadd docker
sudo usermod -aG docker $(whoami)

sudo service docker start
sudo systemctl status docker

sudo docker info
