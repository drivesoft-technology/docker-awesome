FROM php:7.0.14-fpm

MAINTAINER Eakkabin Jaikeawma <eakkabin@drivesoft.co.th>

RUN buildDeps='autoconf g++ gcc curl ca-certificates libc6-dev libpcre3-dev libssl-dev make git' \
    && apt-get update && apt-get install -y $buildDeps --no-install-recommends \
    && docker-php-ext-install -j$(nproc) iconv mysqli pdo pdo_mysql mbstring \
    && apt-get clean && apt-get autoremove \
    && rm -r /var/lib/apt/lists/* && rm -rf /tmp/* /var/tmp/* \
    && apt-get purge -y --auto-remove $buildDeps

 RUN mkdir -p /build && git clone https://github.com/mongodb/mongo-php-driver.git && cd mongo-php-driver \
    && git submodule sync && git submodule update --init && phpize && ./configure && make all -j 5 \
    && make install && echo "extension=mongodb.so" > /usr/local/etc/php/conf.d/20-mongodb.ini \ 
    && rm -rf /build

WORKDIR /usr/share/nginx/html

EXPOSE 9000

CMD ["php-fpm"]
