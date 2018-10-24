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


Build MongoDB PHP Mobule.
---------------------------------------------------

```
docker build -t build/php7mongo:7.2.10 .
```


```
docker run -it --name docker-php7mongo -d build/php7mongo:7.2.10
docker cp docker-php7mongo:/usr/local/etc/php/conf.d/mongodb.ini ./php7-ini/mongodb.ini
docker cp docker-php7mongo:/usr/local/lib/php/extensions/no-debug-non-zts-20170718/mongodb.so ./php7-ext/mongodb.so
```


```
docker stop docker-php7mongo && docker rm docker-php7mongo
```
