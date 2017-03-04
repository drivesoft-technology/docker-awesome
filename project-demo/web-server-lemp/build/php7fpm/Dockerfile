FROM php:7.0.16-fpm

MAINTAINER Eakkabin Jaikeawma <eakkabin@drivesoft.co.th>

RUN buildDeps='autoconf g++ gcc ca-certificates libc6-dev make' \
    && apt-get update && apt-get install -y curl libpcre3-dev libssl-dev libssl1.0.0 $buildDeps --no-install-recommends \
    && docker-php-ext-install -j$(nproc) iconv mysqli pdo pdo_mysql mbstring \
    && apt-get clean && apt-get autoremove \
    && rm -r /var/lib/apt/lists/* && rm -rf /tmp/* /var/tmp/* \
    && apt-get purge -y --auto-remove $buildDeps

WORKDIR /usr/share/nginx/html

EXPOSE 9000

CMD ["php-fpm"]
