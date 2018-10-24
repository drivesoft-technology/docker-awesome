Getting started for Docker Engine CE (Free Version)
---------------------------------------------------

```
sudo mkdir -p /build && cd /build

sudo apt-get install git -y

sudo git clone https://github.com/drivesoft-technology/docker-awesome.git

cd /build/docker-awesome
```


Install Docker Engine CE v18.06.1 (Free Version)
---------------------------------------------------

```
bash docker-install/install-docker-engine-on-ubuntu18.sh
```


Install Docker Compose v1.22.0
---------------------------------------------------

```
bash docker-install/install-docker-compose-on-ubuntu18.sh
```


Build PHP Mobule with Phalcon Framework v3.4.1
---------------------------------------------------

```
docker build -t build/php7phalcon:7.2.10 .
```


```
docker run -it --name docker-php7phalcon -d build/php7phalcon:7.2.10
docker cp docker-php7phalcon:/usr/local/etc/php/conf.d/phalcon.ini ./php7-ini/phalcon.ini
docker cp docker-php7phalcon:/usr/local/lib/php/extensions/no-debug-non-zts-20170718/phalcon.so ./php7-ext/phalcon.so
```


```
docker stop docker-php7phalcon && docker rm docker-php7phalcon
```
