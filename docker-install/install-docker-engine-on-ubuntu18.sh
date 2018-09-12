#!/bin/sh

sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common
sudo apt-get remove -y docker docker-engine docker-ce docker.io

sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update && sudo apt-cache policy docker-ce

sudo apt-get install -y docker-ce
sudo apt-cache madison docker-ce

sudo groupadd docker
sudo usermod -aG docker $(whoami)

sudo service docker start
sudo systemctl status docker

sudo docker info
