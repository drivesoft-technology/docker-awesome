FROM php:7.0.13-fpm
MAINTAINER Radoslaw Fafara <radek@amsterdamstandard.com>

RUN apt-get update \
    && apt-get -y install --no-install-recommends bsdtar \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Build & install Phalcon 3.0.1 from github zip package
RUN curl -L https://github.com/phalcon/cphalcon/archive/v3.0.2.zip | bsdtar -C /tmp -xvf- \
    && cd /tmp/cphalcon-3.0.2/build \
    && bash ./install \
    && echo "extension=phalcon.so" > ${PHP_INI_DIR}/conf.d/phalcon.ini \
    && rm -rf /tmp/* /var/tmp/*
