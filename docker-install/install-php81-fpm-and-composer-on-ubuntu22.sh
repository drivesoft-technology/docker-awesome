#!/bin/sh

sudo apt update -y && sudo apt upgrade -y
sudo apt install software-properties-common -y

sudo add-apt-repository ppa:ondrej/php -y

# PHP 8.1.21 (cli)
sudo apt install php8.1 -y
php -v # PHP 8.1.21 (cli) (built: Jul  8 2023 07:10:19) (NTS)

# Composer version 2.6.2
curl -sS https://getcomposer.org/installer | php
chmod +x composer.phar

mv composer.phar /usr/local/bin/composer
composer -V # Composer version 2.6.2 2023-09-03 14:09:15
