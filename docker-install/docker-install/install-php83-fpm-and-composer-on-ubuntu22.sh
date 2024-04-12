#!/bin/sh

sudo apt update -y && sudo apt upgrade -y
sudo apt install software-properties-common -y

sudo add-apt-repository ppa:ondrej/php -y

# PHP 8.3.6 (cli)
sudo apt install php8.3 -y
php -v # PHP 8.3.6 (cli) (built: Apr 11 2024 20:23:38) (NTS)

# Composer version 2.7.2
curl -sS https://getcomposer.org/installer | php
chmod +x composer.phar

mv composer.phar /usr/local/bin/composer
composer -V # Composer version 2.7.2 2024-03-11 17:12:18
