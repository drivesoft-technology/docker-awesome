#!/bin/sh

# PHP 7.4.3 (cli)
sudo apt install php7.4-cli -y
php -v 

# Composer version 1.10
curl -sS https://getcomposer.org/installer | php
chmod +x composer.phar

mv composer.phar /usr/local/bin/composer
composer -V
