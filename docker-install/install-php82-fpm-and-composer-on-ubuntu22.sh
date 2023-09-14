#!/bin/sh

sudo apt update -y && sudo apt upgrade -y
sudo apt install software-properties-common -y

sudo add-apt-repository ppa:ondrej/php -y

# PHP 8.2.10 (cli)
sudo apt install php8.2 -y
php -v # PHP 8.2.10 (cli) (built: Sep  2 2023 06:59:22) (NTS)

# Composer version 2.6.2
curl -sS https://getcomposer.org/installer | php
chmod +x composer.phar

mv composer.phar /usr/local/bin/composer
composer -V # Composer version 2.6.2 2023-09-03 14:09:15
