#!/bin/sh
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get remove docker docker-engine docker.io -y
sudo apt-get install apt-transport-https ca-certificates curl gnupg2 software-properties-common -y
sudo curl -fsSL https://download.docker.com/linux/$(. /etc/os-release; echo "$ID")/gpg | sudo apt-key add -
sudo apt-get update && sudo apt-cache policy docker-ce
sudo apt-get install -y docker
sudo groupadd docker
sudo usermod -aG docker $(whoami)