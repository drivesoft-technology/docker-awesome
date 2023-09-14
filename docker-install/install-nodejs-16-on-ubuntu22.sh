#!/bin/sh

# Node.js 16.19.1
sudo apt-get update -y
sudo apt-get install -y ca-certificates curl gnupg

sudo apt-get purge nodejs
sudo apt autoremove -y

sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg

NODE_MAJOR=20
echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list

sudo apt-get update -y
sudo apt-get install nodejs -y
sudo apt autoremove -y

node -v
