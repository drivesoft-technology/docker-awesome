#!/bin/sh

# Node.js 18.20.3
sudo apt-get update -y
sudo apt-get install -y ca-certificates curl gnupg

sudo apt-get purge nodejs
sudo apt autoremove -y

sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg

NODE_MAJOR=18
echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list

sudo apt-get update -y
sudo apt-get install nodejs -y
sudo apt autoremove -y

npm install -g npm

node -v # v18.20.3
npm -v # v10.8.2