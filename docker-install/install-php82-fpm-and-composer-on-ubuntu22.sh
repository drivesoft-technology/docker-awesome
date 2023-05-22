#!/bin/sh

sudo apt update -y && sudo apt upgrade -y
sudo apt install software-properties-common -y

sudo add-apt-repository ppa:ondrej/php -y

# PHP 8.2.6 (cli)
sudo apt install php8.2 -y
php -v # PHP 8.2.6 (cli) (built: May 12 2023 06:24:00) (NTS)

# Composer version 2.5.5
curl -sS https://getcomposer.org/installer | php
chmod +x composer.phar

mv composer.phar /usr/local/bin/composer
composer -V # Composer version 2.5.5 2023-03-21 11:50:05
