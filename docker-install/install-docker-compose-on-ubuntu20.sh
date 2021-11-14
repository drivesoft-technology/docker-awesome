#!/bin/sh

sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
sudo docker-compose --version

# mkdir -p ~/.docker/cli-plugins/
# sudo curl -SL "https://github.com/docker/compose/releases/download/v2.1.1/docker-compose-linux-$(uname -m)" -o ~/.docker/cli-plugins/docker-compose
# sudo chmod +x ~/.docker/cli-plugins/docker-compose
# docker compose version
