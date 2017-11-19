
Getting started for Docker Engine CE (Free Version)
---------------------------------------------------

```
sudo mkdir -p /build && cd /build

sudo apt-get install git -y && sudo git clone https://github.com/drivesoft-technology/docker-awesome.git

cd /build/docker-awesome
```


Install Docker Engine CE v17.09.0 (Free Version)
---------------------------------------------------

```
bash /build/docker-awesome/docker-install/install-docker-engine-on-ubuntu16.sh
```


Install Docker Compose v1.17.0
---------------------------------------------------

```
bash /build/docker-awesome/docker-install/install-docker-compose-on-ubuntu16.sh
```


Build MongoDB PHP Mobule.
---------------------------------------------------

```
docker build -t build/php7mongo:7.1.11 .
```


```
docker run -it --name codestep-php7mongo -d build/php7mongo:7.1.11
docker cp codestep-php7mongo:/usr/local/etc/php/conf.d/20-mongodb.ini ./php7-ini/20-mongodb.ini
docker cp codestep-php7mongo:/usr/local/lib/php/extensions/no-debug-non-zts-20160303/mongodb.so ./php7-ext/mongodb.so
```


```
docker stop codestep-php7mongo && docker rm codestep-php7mongo
```