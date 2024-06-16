#!/bin/sh

sudo apt update -y && sudo apt upgrade -y
sudo apt install software-properties-common -y

sudo add-apt-repository ppa:ondrej/php -y

# PHP 8.3.8 (cli)
sudo apt install php8.3 -y
php -v # PHP 8.3.8 (cli) (built: Jun  8 2024 21:34:49) (NTS)

# Composer version 2.7.7
curl -sS https://getcomposer.org/installer | php
chmod +x composer.phar

mv composer.phar /usr/local/bin/composer
composer -V # Composer version 2.7.7 2024-06-10 22:11:12
