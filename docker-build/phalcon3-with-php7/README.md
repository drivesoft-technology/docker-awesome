
- $ docker build -t build/php7phalcon:7.1.11 .

- $ docker run -it --name codestep-php7phalcon -d build/php7phalcon:7.1.11
- $ docker cp codestep-php7phalcon:/usr/local/etc/php/conf.d/20-phalcon.ini ./php7-ini/20-phalcon.ini
- $ docker cp codestep-php7phalcon:/usr/local/lib/php/extensions/no-debug-non-zts-20160303/phalcon.so ./php7-ext/phalcon.so

- $ docker stop codestep-php7phalcon && docker rm codestep-php7phalcon