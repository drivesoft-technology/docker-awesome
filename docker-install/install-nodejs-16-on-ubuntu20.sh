#!/bin/sh

# Node.js 16.19.1
curl -sL https://deb.nodesource.com/setup_16.x -o nodesource_setup.sh

bash nodesource_setup.sh
apt-get install nodejs -y

rm -rf nodesource_setup.sh

sudo apt autoremove -y
node -v
