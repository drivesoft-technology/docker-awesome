#!/bin/sh

sudo apt update -y && sudo apt upgrade -y
sudo apt install software-properties-common -y

sudo add-apt-repository ppa:ondrej/php -y

# PHP 8.1.31 (cli)
sudo apt install php8.1 php8.1-fpm php8.1-mysql php8.1-redis php8.1-mongodb php8.1-zip php8.1-gd -y
php -v # PHP 8.1.31 (cli) (built: Nov 21 2024 13:10:45) (NTS)

# Composer version 2.8.5
curl -sS https://getcomposer.org/installer | php
chmod +x composer.phar

mv composer.phar /usr/local/bin/composer
composer -V # Composer version 2.8.5 2025-01-21 15:23:40
