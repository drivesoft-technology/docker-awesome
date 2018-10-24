FROM php:7.2.10-fpm
LABEL Eakkabin Jaikeawma <eakkabin@codestep.io>

RUN apt-get update && apt-get install -y curl libpcre3-dev libssl-dev libssl1.0.0 --no-install-recommends \
    && docker-php-ext-install -j$(nproc) iconv mysqli pdo pdo_mysql mbstring \
    && apt-get clean && apt-get autoremove \
    && rm -r /var/lib/apt/lists/* && rm -rf /tmp/* /var/tmp/*

WORKDIR /usr/share/nginx/html
EXPOSE 9000

CMD ["php-fpm"]