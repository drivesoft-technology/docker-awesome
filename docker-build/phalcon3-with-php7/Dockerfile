FROM php:7.3.7-fpm
LABEL Eakkabin Jaikeawma <eakkabin_it@hotmail.com>

ENV PHALCON_VERSION=3.4.4

RUN buildDeps='autoconf g++ gcc ca-certificates libc6-dev libpcre3-dev libssl-dev libcurl4-openssl-dev pkg-config make re2c curl git' \
    && apt-get update && apt-get install -y $buildDeps --no-install-recommends \
    && docker-php-ext-install -j$(nproc) iconv mbstring && docker-php-ext-enable mbstring \
    && curl -sSL "https://codeload.github.com/phalcon/cphalcon/tar.gz/v${PHALCON_VERSION}" | tar -xz \
    && cd cphalcon-${PHALCON_VERSION}/build && ./install \
    && cp ../tests/_ci/phalcon.ini $(php-config --configure-options | grep -o "with-config-file-scan-dir=\([^ ]*\)" | awk -F'=' '{print $2}') \
    && cd ../../ && rm -r cphalcon-${PHALCON_VERSION} \
    && curl -sS https://getcomposer.org/installer | php && chmod +x composer.phar \
    && mv composer.phar /usr/local/bin/composer \
    && mkdir -p build && cd build \
    && git clone https://github.com/mongodb/mongo-php-driver.git && cd mongo-php-driver \
    && git submodule update --init && phpize && ./configure && make all && make install \
    && echo "[mongodb]" >> /usr/local/etc/php/conf.d/mongodb.ini \
    && echo "extension=mongodb.so" >> /usr/local/etc/php/conf.d/mongodb.ini \
    && cd ../../ && rm -r build \
    && apt-get clean && apt autoremove -y && apt-get clean -y \
    && rm -r /var/lib/apt/lists/* && rm -rf /tmp/* /var/tmp/* \
    && apt-get purge -y --auto-remove $buildDeps

WORKDIR /usr/share/nginx/html

EXPOSE 9000

CMD ["php-fpm"]
