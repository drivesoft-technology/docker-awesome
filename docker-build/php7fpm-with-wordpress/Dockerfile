FROM php:7.3.7-fpm
LABEL Eakkabin Jaikeawma <eakkabin_it@hotmail.com>

RUN apt-get update && apt-get install -y curl git --no-install-recommends \
    && docker-php-ext-install -j$(nproc) iconv mysqli pdo pdo_mysql mbstring \
    && curl -sS https://getcomposer.org/installer | php && chmod +x composer.phar \
    && mv composer.phar /usr/local/bin/composer \
    && apt-get clean && apt autoremove -y \
    && rm -r /var/lib/apt/lists/* && rm -rf /tmp/* /var/tmp/*

WORKDIR /usr/share/nginx/html

CMD ["php-fpm"]
