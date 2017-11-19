FROM php:7.1.11-fpm
LABEL Eakkabin Jaikeawma <eakkabin@codestep.io>

RUN buildDeps='autoconf g++ gcc ca-certificates libc6-dev libpcre3-dev libssl-dev libcurl4-openssl-dev pkg-config make re2c curl git' \
    && apt-get update && apt-get install -y libssl1.0.0 --no-install-recommends \
    && apt-get install -y $buildDeps --no-install-recommends \
    && docker-php-ext-install -j$(nproc) iconv mysqli pdo pdo_mysql mbstring \
    && mkdir -p /build && cd /build \
    && git clone --depth=1 git://github.com/phalcon/cphalcon.git \
    && cd /build/cphalcon/build && ./install && echo "extension=phalcon.so" > /usr/local/etc/php/conf.d/20-phalcon.ini \
    && pecl install mongodb \
    && echo "extension=mongodb.so" > /usr/local/etc/php/conf.d/20-mongodb.ini \
    && rm -rf /build \
    && apt-get clean && apt-get autoremove \
    && rm -r /var/lib/apt/lists/* && rm -rf /tmp/* /var/tmp/* \
    && apt-get purge -y --auto-remove $buildDeps

EXPOSE 9000

CMD ["php-fpm"]
