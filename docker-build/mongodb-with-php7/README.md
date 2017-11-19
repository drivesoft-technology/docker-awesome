
- $ docker build -t build/php7mongo:7.1.11 .

- $ docker run -it --name codestep-php7mongo -d build/php7mongo:7.1.11
- $ docker cp codestep-php7mongo:/usr/local/etc/php/conf.d/20-mongodb.ini ./php7-ini/20-mongodb.ini
- $ docker cp codestep-php7mongo:/usr/local/lib/php/extensions/no-debug-non-zts-20160303/mongodb.so ./php7-ext/mongodb.so

- $ docker stop codestep-php7mongo && docker rm codestep-php7mongo