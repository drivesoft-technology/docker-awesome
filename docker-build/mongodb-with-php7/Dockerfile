FROM php:7.2.10-fpm
LABEL Eakkabin Jaikeawma <eakkabin@codestep.io>

RUN buildDeps='autoconf g++ gcc ca-certificates libc6-dev libpcre3-dev libssl-dev libcurl4-openssl-dev pkg-config make re2c curl git' \
    && apt-get update && apt-get install -y $buildDeps --no-install-recommends \
    && docker-php-ext-install -j$(nproc) iconv mbstring && docker-php-ext-enable mbstring \
    && mkdir -p build && cd build \
    && git clone https://github.com/mongodb/mongo-php-driver.git && cd mongo-php-driver \
    && git submodule update --init && phpize && ./configure && make all && make install \
    && echo "[mongodb]" >> /usr/local/etc/php/conf.d/mongodb.ini \
    && echo "extension=mongodb.so" >> /usr/local/etc/php/conf.d/mongodb.ini \
    && rm -r build \
    && apt-get clean && apt autoremove -y \
    && rm -r /var/lib/apt/lists/* && rm -rf /tmp/* /var/tmp/* \
    && apt-get purge -y --auto-remove $buildDeps

WORKDIR /usr/share/nginx/html

EXPOSE 9000

CMD ["php-fpm"]
