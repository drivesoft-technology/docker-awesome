Getting started for Docker Engine CE (Free Version)
---------------------------------------------------

```
sudo mkdir -p build && cd build

sudo apt-get install git -y

sudo git clone https://github.com/drivesoft-technology/docker-awesome.git

cd docker-awesome
```


Install Docker Engine CE v20.10.7 (Free Version)
---------------------------------------------------

```
bash docker-install/install-docker-engine-on-ubuntu20.sh
```


Install Docker Compose v1.29.2
---------------------------------------------------

```
bash docker-install/install-docker-compose-on-ubuntu20.sh
```


Install CTOP Monitor Containers
---------------------------------------------------

```
bash docker-install/install-ctop-monitor.sh
```


Install LEMP (Linux-Nginx-MariaDB-Php7)
---------------------------------------------------

```
sudo docker-compose -f project-demo/lemp-stack/docker-compose.yml up -d
```

```
http://[IP ADDRESS] << Demo. Nginx v1.20.1-alpine

http://[IP ADDRESS]/info.php << Demo. PHP v7.4.21 (FPM) 

http://[IP ADDRESS]:8080 << Demo. PhpMyAdmin v5.1.1
```


Install Multi Domain (Load + Server + DB)
---------------------------------------------------

```
sudo docker-compose -f project-demo/multi-domain/docker-compose.yml up -d
```

```
http://[IP ADDRESS] << Demo. Nginx v1.20.1-alpine

http://[IP ADDRESS]/info.php << Demo. PHP v7.4.21 (FPM) 

http://[IP ADDRESS]:8080 << Demo. PhpMyAdmin v5.1.1
```


Install Layer 4 Load Balancing (Load + Server + DB)
---------------------------------------------------

```
sudo docker-compose -f project-demo/load-balancing-layer-4/docker-compose.yml up -d
```

```
http://[IP ADDRESS] << Demo. Nginx v1.20.1-alpine

http://[IP ADDRESS]:8000 << Demo. HAProxy Status v1.8.2-alpine

http://[IP ADDRESS]/info.php << Demo. PHP v7.4.21 (FPM) 
```


Install Nginx v1.20.1-alpine + PHP v7.4.21 (FPM)
---------------------------------------------------

```
sudo docker-compose -f docker-compose/nginx-php7-fpm/docker-compose.yml up -d
```

```
http://[IP ADDRESS] << Demo. Nginx v1.20.1-alpine

http://[IP ADDRESS]/info.php << Demo. PHP v7.4.21 (FPM) 
```


Install Nginx v1.20.1-alpine + PHP v7.4.21 (FPM) + Phalcon v3.4.1
---------------------------------------------------

```
sudo docker-compose -f docker-compose/phalcon-php7-fpm/docker-compose.yml up -d
```

```
http://[IP ADDRESS] << Demo. Nginx v1.20.1-alpine

http://[IP ADDRESS]/info.php << Demo. PHP v7.4.21 (Info) 
```


Install Nginx v1.20.1-alpine
---------------------------------------------------

```
sudo docker-compose -f docker-compose/nginx-example/docker-compose.yml up -d
```

```
http://[IP ADDRESS] << Demo. Nginx v1.20.1-alpinene
```


Install PHP v7.4.21 (FPM)
---------------------------------------------------

```
sudo docker-compose -f docker-compose/php7-example/docker-compose.yml up -d
```


Install Node v14.17.1-alpine
---------------------------------------------------

```
sudo docker-compose -f docker-compose/node-example/docker-compose.yml up -d
```

```
http://[IP ADDRESS]:8000 << Demo. Node.js + Express.js
```


Install MySQL v8.0.25 + PhpMyAdmin v5.1.1
---------------------------------------------------

```
sudo docker-compose -f docker-compose/mysql-example/docker-compose.yml up -d
```

```
http://[IP ADDRESS]:8080 << Demo. PhpMyAdmin v5.1.1
```


Install MariaDB v10.6.2 + PhpMyAdmin v5.1.1
---------------------------------------------------

```
sudo docker-compose -f docker-compose/mariadb-example/docker-compose.yml up -d
```

```
http://[IP ADDRESS]:8080 << Demo. PhpMyAdmin v5.1.1
```


Install MongoDB v4.4.6
---------------------------------------------------

```
sudo docker-compose -f docker-compose/mongo-example/docker-compose.yml up -d
```


Install Redis Database v6.2.4-alpine
---------------------------------------------------

```
sudo docker-compose -f docker-compose/redis-example/docker-compose.yml up -d
```
