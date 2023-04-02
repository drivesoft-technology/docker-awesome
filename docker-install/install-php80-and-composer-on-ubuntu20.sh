#!/bin/sh

# PHP 8.0.26 (FPM)
sudo apt install software-properties-common
sudo add-apt-repository ppa:ondrej/php

sudo apt update
sudo apt install php8.0-fpm -y
sudo apt autoremove -y

sudo systemctl status php8.0-fpm
php -v 

# Composer version 2.5.5
curl -sS https://getcomposer.org/installer | php
chmod +x composer.phar

mv composer.phar /usr/local/bin/composer
composer -V
