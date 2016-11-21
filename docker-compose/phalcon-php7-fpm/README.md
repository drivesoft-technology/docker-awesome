Demo: with Docker Compose
---------------------------------------------------

```
$ sudo apt-get install git -y
$ sudo mkdir -p /build && cd /build
$ sudo git clone https://github.com/drivesoft-newage/docker-awesome.git
$ cd /build/docker-awesome/docker-compose/phalcon-php7-fpm
$ docker-compose up -d
```

Demo: with Docker Engine
---------------------------------------------------

```
$ sudo apt-get install git -y
$ sudo mkdir -p /build && cd /build
$ sudo git clone https://github.com/drivesoft-newage/docker-awesome.git
$ cd /build/docker-awesome/docker-compose/phalcon-php7-fpm
$ sudo docker run -it --rm --name docker-phpfpm -p 9000:9000 -v ./html:/usr/share/nginx/html -d drivestudio/phalcon-php7-fpm:7.0.13
$ sudo docker run -it --rm --name docker-nginx -p 80:80 -v ./html:/usr/share/nginx/html -v ./config/default.conf:/etc/nginx/conf.d/default.conf --link docker-phpfpm:phpfpm -d nginx:1.11.5
```
