FROM php:7.0.14-fpm

MAINTAINER Eakkabin Jaikeawma <eakkabin@drivesoft.co.th>

RUN apt-get update && apt-get install -y autoconf g++ gcc curl ca-certificates git libssl-dev --no-install-recommends \
    && apt-get clean \
    && rm -r /var/lib/apt/lists/* \
    && rm -rf /tmp/* /var/tmp/*

 RUN mkdir -p /build \
    && git clone https://github.com/mongodb/mongo-php-driver.git \
    && cd mongo-php-driver \
    && git submodule sync && git submodule update --init \
    && phpize \
    && ./configure \
    && make all -j 5 \
    && make install \
    && echo "extension=mongodb.so" > /usr/local/etc/php/conf.d/20-mongodb.ini \ 
    && rm -rf /build

WORKDIR /usr/share/nginx/html

EXPOSE 9000

CMD ["php-fpm"]
