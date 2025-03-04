#!/bin/sh

sudo apt update -y && sudo apt upgrade -y
sudo apt install software-properties-common -y

sudo add-apt-repository ppa:ondrej/php -y

# PHP 8.3.9 (cli)
sudo apt install php8.3 php8.3-fpm php8.3-mysql php8.3-redis php8.3-mongodb php8.3-zip php8.3-gd -y
php -v # PHP 8.3.9 (cli) (built: Jul  5 2024 12:04:09) (NTS)

# Composer version 2.7.7
curl -sS https://getcomposer.org/installer | php
chmod +x composer.phar

mv composer.phar /usr/local/bin/composer
composer -V # Composer version 2.7.7 2024-06-10 22:11:12