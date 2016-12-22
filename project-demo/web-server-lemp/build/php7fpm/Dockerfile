FROM php:7.0.14-fpm

MAINTAINER Eakkabin Jaikeawma <eakkabin@drivesoft.co.th>

RUN apt-get update && apt-get install -y autoconf g++ gcc curl ca-certificates --no-install-recommends \
    && docker-php-ext-install -j$(nproc) iconv mysqli pdo pdo_mysql mbstring \
	&& rm -r /var/lib/apt/lists/*

RUN mkdir -p /usr/share/nginx/html

WORKDIR /usr/share/nginx/html

EXPOSE 9000

CMD ["php-fpm"]
