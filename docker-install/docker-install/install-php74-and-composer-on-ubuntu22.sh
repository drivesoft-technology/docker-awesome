#!/bin/sh

sudo apt update -y && sudo apt upgrade -y
sudo apt install software-properties-common -y

sudo add-apt-repository ppa:ondrej/php -y

# PHP 7.4.33 (cli)
sudo apt install php7.4 -y
php -v # PHP 7.4.33 (cli) (built: Feb 14 2023 18:31:54) ( NTS )

# Composer version 2.5.5
curl -sS https://getcomposer.org/installer | php
chmod +x composer.phar

mv composer.phar /usr/local/bin/composer
composer -V # Composer version 2.5.5 2023-03-21 11:50:05
