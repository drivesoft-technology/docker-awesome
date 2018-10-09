FROM php:7.2.10-fpm
LABEL Eakkabin Jaikeawma <eakkabin@codestep.io>

ENV PHALCON_VERSION=3.4.1

RUN buildDeps='autoconf g++ gcc ca-certificates libc6-dev libpcre3-dev libssl-dev libcurl4-openssl-dev pkg-config make re2c curl git' \
    && apt-get update && apt-get install -y $buildDeps --no-install-recommends \
    && docker-php-ext-install -j$(nproc) iconv mbstring && docker-php-ext-enable mbstring \
    && curl -sSL "https://codeload.github.com/phalcon/cphalcon/tar.gz/v${PHALCON_VERSION}" | tar -xz \
    && cd cphalcon-${PHALCON_VERSION}/build && ./install \
    && cp ../tests/_ci/phalcon.ini $(php-config --configure-options | grep -o "with-config-file-scan-dir=\([^ ]*\)" | awk -F'=' '{print $2}') \
    && cd ../../ && rm -r cphalcon-${PHALCON_VERSION} \
    && php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
    && php -r "if (hash_file('SHA384', 'composer-setup.php') === '93b54496392c062774670ac18b134c3b3a95e5a5e5c8f1a9f115f203b75bf9a129d5daa8ba6a13e2cc8a1da0806388a8') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" \
    && php composer-setup.php \
    && php -r "unlink('composer-setup.php');" \
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
