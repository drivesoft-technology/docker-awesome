FROM php:7.0.14-fpm

MAINTAINER Eakkabin Jaikeawma <eakkabin@drivesoft.co.th>

RUN apt-get update && apt-get install -y autoconf g++ gcc curl ca-certificates git --no-install-recommends \
    && docker-php-ext-install -j$(nproc) iconv mysqli pdo pdo_mysql mbstring \
	&& rm -r /var/lib/apt/lists/*

RUN mkdir -p /build \
    && git clone --depth=1 git://github.com/phalcon/cphalcon.git \
    && cd /build/cphalcon/build \
    && ./install \ 
    && cp -a /usr/local/lib/php/extensions/no-debug-non-zts-20151012/phalcon.so /usr/share/nginx/html/phalcon.so \ 
    && rm -rf /build

WORKDIR /usr/share/nginx/html

EXPOSE 9000

CMD ["php-fpm"]
