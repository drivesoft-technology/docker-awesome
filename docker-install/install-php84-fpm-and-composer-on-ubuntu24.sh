#!/bin/sh

sudo apt update -y && sudo apt upgrade -y
sudo apt install software-properties-common -y

sudo add-apt-repository ppa:ondrej/php -y

# PHP 8.4.10 (cli)
sudo apt install php8.4 php8.4-fpm php8.4-mysql php8.4-redis php8.4-mongodb php8.4-zip php8.4-gd -y
php -v # PHP 8.4.10 (cli) (built: Mar 13 2025 15:36:20) (NTS)

# Composer version 2.8.9
curl -sS https://getcomposer.org/installer | php
chmod +x composer.phar

mv composer.phar /usr/local/bin/composer
composer -V # Composer version 2.8.9 2025-05-13 14:01:37
