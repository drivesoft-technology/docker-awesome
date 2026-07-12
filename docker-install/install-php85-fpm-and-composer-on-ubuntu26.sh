#!/bin/sh

sudo apt update -y && sudo apt upgrade -y

sudo apt install software-properties-common -y
sudo add-apt-repository universe

sudo apt update
sudo apt install php-fpm -y

# PHP 8.5.4 (cli)
php -v # PHP 8.5.4 (cli) (built: May 25 2026 12:19:37) (NTS)

# Composer version 2.10.2
curl -sS https://getcomposer.org/installer | php
chmod +x composer.phar

mv composer.phar /usr/local/bin/composer
composer -V # Composer version 2.10.2 2026-07-01 11:24:45
