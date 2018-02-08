FROM php:7.2.2-fpm
LABEL Eakkabin Jaikeawma <eakkabin@codestep.io>

ENV PHALCON_VERSION=3.3.1

RUN buildDeps='autoconf g++ gcc ca-certificates libc6-dev libpcre3-dev libssl-dev libcurl4-openssl-dev pkg-config make re2c curl git' \
    && apt-get update && apt-get install -y --no-install-recommends \
    && apt-get install -y $buildDeps --no-install-recommends \
    && docker-php-ext-install -j$(nproc) iconv mbstring \
    && curl -sSL "https://codeload.github.com/phalcon/cphalcon/tar.gz/v${PHALCON_VERSION}" | tar -xz \
    && cd cphalcon-${PHALCON_VERSION}/build && ./install \
    && cp ../tests/_ci/phalcon.ini $(php-config --configure-options | grep -o "with-config-file-scan-dir=\([^ ]*\)" | awk -F'=' '{print $2}') \
    && cd ../../ && rm -r cphalcon-${PHALCON_VERSION} \
    && apt-get clean && apt-get autoremove -y \
    && rm -r /var/lib/apt/lists/* && rm -rf /tmp/* /var/tmp/* \
    && apt-get purge -y --auto-remove $buildDeps

EXPOSE 9000

CMD ["php-fpm"]
