FROM php:8.3.16-fpm
LABEL maintainer="Eakkabin Jaikeawma <eakakbin.max@outlook.com>"

RUN set -xe && \
    apt-get update && apt-get install -y curl git gzip libonig-dev libfreetype6-dev libjpeg-dev libmagickwand-dev libpng-dev libzip-dev --no-install-recommends && \
    docker-php-ext-install -j$(nproc) bcmath exif gd mysqli zip mbstring sockets && \
    docker-php-ext-configure gd --with-freetype --with-jpeg && \
    docker-php-ext-configure zip && \
    pecl install imagick && \
    docker-php-ext-enable imagick && \
    ## Download PHP Composer ##
    curl -sS https://getcomposer.org/installer | php && chmod +x composer.phar && \
    mv composer.phar /usr/local/bin/composer && \
    # Remove all temp files
    apt-get clean && apt autoremove -y && \
    rm -r /var/lib/apt/lists/* && rm -rf /tmp/* /var/tmp/*

WORKDIR /usr/share/nginx/html
EXPOSE 9000

CMD ["php-fpm"]