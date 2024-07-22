#!/bin/sh

sudo apt update -y && sudo apt upgrade -y
sudo apt install curl gnupg2 ca-certificates lsb-release ubuntu-keyring -y

curl https://nginx.org/keys/nginx_signing.key | gpg --dearmor | sudo tee /usr/share/keyrings/nginx-archive-keyring.gpg >/dev/null
gpg --dry-run --quiet --no-keyring --import --import-options import-show /usr/share/keyrings/nginx-archive-keyring.gpg

# Nginx
echo "deb [signed-by=/usr/share/keyrings/nginx-archive-keyring.gpg] http://nginx.org/packages/ubuntu `lsb_release -cs` nginx" | sudo tee /etc/apt/sources.list.d/nginx.list
echo -e "Package: *\nPin: origin nginx.org\nPin: release o=nginx\nPin-Priority: 900\n" | sudo tee /etc/apt/preferences.d/99nginx

# Remove Apache2
sudo service apache2 stop
sudo apt-get purge apache2 apache2-utils apache2-bin apache2.2-common
sudo rm -rf /etc/apache2
sudo apt autoremove -y

# Update
sudo apt update -y
sudo apt install nginx -y

# Check Versiob
nginx -v # nginx version: nginx/1.26.1

# Remove & Clear
sudo apt autoremove -y

# Enable
sudo nginx
sudo systemctl enable nginx && sudo systemctl status nginx

# Check
curl -I 127.0.0.1