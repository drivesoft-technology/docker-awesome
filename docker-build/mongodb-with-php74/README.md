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
bash docker-install/install-docker-engine-on-ubuntu22.sh
```


Install Docker Compose v1.22.0
---------------------------------------------------

```
bash docker-install/install-docker-compose-on-ubuntu22.sh
```


Build MongoDB PHP Mobule.
---------------------------------------------------

```
docker build -t build/:7.4.33 .
```


```
docker stop docker-php74mongo && docker rm docker-php74mongo
```
