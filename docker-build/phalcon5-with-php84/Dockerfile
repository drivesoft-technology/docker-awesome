FROM php:8.4.24-fpm
LABEL maintainer="Max Eakkabin Jaikeawma <eakakbin.max@outlook.com>"

ARG PHALCON_VERSION=5.11.1
ENV TZ=Asia/Bangkok

RUN set -xe && \
    apt-get update && apt-get install -y build-essential curl git gcc g++ make gzip libzip-dev zip libonig-dev autoconf pkg-config libssl-dev re2c libicu-dev libxml2-dev libcurl4-openssl-dev --no-install-recommends && \
    docker-php-ext-install -j$(nproc) iconv pdo mysqli pdo_mysql sockets exif bcmath zip xml intl opcache && \
    docker-php-ext-configure zip && \
    ## Download PHP Composer ##
    # curl -sS https://getcomposer.org/installer | php && chmod +x composer.phar && \
    # mv composer.phar /usr/local/bin/composer && \
    ## Download Mongo DB ##
    # git clone https://github.com/mongodb/mongo-php-driver.git && cd mongo-php-driver && \
    # git submodule update --init && phpize && ./configure && make all && make install && \
    # echo "[mongodb]" >> /usr/local/etc/php/conf.d/mongodb.ini && \
    # echo "extension=mongodb.so" >> /usr/local/etc/php/conf.d/docker-php-ext-mongodb.ini && \
    # cd .. && \
    ## Download Phalcon ##
    curl -LO https://github.com/phalcon/cphalcon/archive/v${PHALCON_VERSION}.tar.gz -o /tmp/phalcon.tar.gz && \
    tar -xzf /tmp/phalcon.tar.gz -C /tmp && cd /tmp/cphalcon-${PHALCON_VERSION}/build && ./install && docker-php-ext-enable phalcon && \
    echo "[phalcon]" >> /usr/local/etc/php/conf.d/phalcon.ini && \
    echo "extension=phalcon.so" >> /usr/local/etc/php/conf.d/docker-php-ext-phalcon.ini && \
    cd .. && cd .. && \
    ## Remove all temp files ##
    rm -r \
        # ${PWD}/mongo-php-driver \
        /tmp/phalcon.tar.gz \
        /tmp/cphalcon-${PHALCON_VERSION} \
    && \
    apt-get clean && apt autoremove -y && \
    rm -r /var/lib/apt/lists/* && rm -rf /tmp/* /var/tmp/*s

RUN php --ri phalcon

WORKDIR /usr/share/nginx/html
EXPOSE 9000

CMD ["php-fpm"]