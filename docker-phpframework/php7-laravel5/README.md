Getting started for Docker Engine CE (Free Version)
---------------------------------------------------

```
sudo mkdir -p build && cd build

sudo apt-get install git -y

sudo git clone https://github.com/drivesoft-technology/docker-awesome.git

cd docker-awesome
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


Install LEMP Stack (Linux-Nginx-MariaDB-Php7)
---------------------------------------------------

```
sudo docker-compose -f docker-phpframework/php7-laravel5/docker-compose.yml up -d
```


Install Laravel Framework 5
---------------------------------------------------

```
chmod -R 0777 docker-phpframework/php7-laravel5/www/laravelapp/storage

docker exec -it docker-php7fpm sh 

cd laravel && composer install && php artisan key:generate
```

```
http://[IP ADDRESS] << Demo. Nginx v1.15.4-alpine

http://[IP ADDRESS]/info.php << Demo. PHP v7.2.10 (Info) 

http://[IP ADDRESS]:8080 << Demo. PhpMyAdmin v4.8.3
```
