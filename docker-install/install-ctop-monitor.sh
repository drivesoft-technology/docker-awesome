#!/bin/sh

sudo apt-get install python-pip -y
sudo pip install ctop -y
sudo wget https://github.com/bcicen/ctop/releases/download/v0.4/ctop-0.4-linux-amd64 -O ctop

sudo mv ctop /usr/local/bin/

sudo chmod +x /usr/local/bin/ctop

sudo ctop
