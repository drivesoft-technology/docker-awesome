FROM php:7.3-fpm-alpine

RUN apk upgrade --update && apk --no-cache add \
    autoconf file g++ gcc binutils isl libatomic libc-dev musl-dev make re2c libstdc++ libgcc libcurl curl-dev binutils-libs mpc1 mpfr3 gmp libgomp coreutils freetype-dev libjpeg-turbo-dev libltdl libmcrypt-dev libpng-dev openssl-dev libxml2-dev expat-dev \
    && docker-php-ext-install -j$(nproc) iconv mysqli pdo pdo_mysql curl bcmath mcrypt mbstring json xml zip opcache \
	&& docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
	&& docker-php-ext-install -j$(nproc) gd

CMD ["php-fpm"]