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
http://[IP ADDRESS] << Demo. Nginx v1.15.4-alpine

http://[IP ADDRESS]/info.php << Demo. PHP v7.2.10 (FPM) 

http://[IP ADDRESS]:8080 << Demo. PhpMyAdmin v4.8.3
```


Install Multi Domain (Linux-Nginx-MariaDB-Php7)
---------------------------------------------------

```
sudo docker-compose -f project-demo/multi-domain/docker-compose.yml up -d
```

```
http://[IP ADDRESS] << Demo. Nginx v1.15.4-alpine

http://[IP ADDRESS]/info.php << Demo. PHP v7.2.10 (FPM) 

http://[IP ADDRESS]:8080 << Demo. PhpMyAdmin v4.8.3
```


Install Layer 4 Load Balancing (Load + Server + DB)
---------------------------------------------------

```
sudo docker-compose -f project-demo/load-balancing-layer-4/docker-compose.yml up -d
```

```
http://[IP ADDRESS] << Demo. Nginx v1.15.4-alpine

http://[IP ADDRESS]:8000 << Demo. HAProxy Status v1.8.2-alpine

http://[IP ADDRESS]/info.php << Demo. PHP v7.2.10 (FPM) 
```


Install Nginx v1.15.4-alpine + PHP v7.2.10 (FPM)
---------------------------------------------------

```
sudo docker-compose -f docker-compose/nginx-php7-fpm/docker-compose.yml up -d
```

```
http://[IP ADDRESS] << Demo. Nginx v1.15.4-alpine

http://[IP ADDRESS]/info.php << Demo. PHP v7.2.10 (FPM) 
```


Install Nginx v1.15.4-alpine + PHP v7.2.10 (FPM) + Phalcon v3.4.1
---------------------------------------------------

```
sudo docker-compose -f docker-compose/phalcon-php7-fpm/docker-compose.yml up -d
```

```
http://[IP ADDRESS] << Demo. Nginx v1.15.4-alpine

http://[IP ADDRESS]/info.php << Demo. PHP v7.2.10 (Info) 
```


Install Nginx v1.15.4-alpine
---------------------------------------------------

```
sudo docker-compose -f docker-compose/nginx-example/docker-compose.yml up -d
```

```
http://[IP ADDRESS] << Demo. Nginx v1.15.4-alpinene
```


Install PHP v7.2.10 (FPM)
---------------------------------------------------

```
sudo docker-compose -f docker-compose/php7-example/docker-compose.yml up -d
```


Install Node v8.9.4-alpine
---------------------------------------------------

```
sudo docker-compose -f docker-compose/node-example/docker-compose.yml up -d
```

```
http://[IP ADDRESS]:8000 << Demo. Node.js + Express.js
```


Install MySQL v5.7.23 + PhpMyAdmin v4.8.3
---------------------------------------------------

```
sudo docker-compose -f docker-compose/mysql-example/docker-compose.yml up -d
```

```
http://[IP ADDRESS]:8080 << Demo. PhpMyAdmin v4.8.3
```


Install MariaDB v10.3.10 + PhpMyAdmin v4.8.3
---------------------------------------------------

```
sudo docker-compose -f docker-compose/mariadb-example/docker-compose.yml up -d
```

```
http://[IP ADDRESS]:8080 << Demo. PhpMyAdmin v4.8.3
```


Install MongoDB v4.1.3
---------------------------------------------------

```
sudo docker-compose -f docker-compose/mongo-example/docker-compose.yml up -d
```


Install Redis Database v4.0.11-alpine
---------------------------------------------------

```
sudo docker-compose -f docker-compose/redis-example/docker-compose.yml up -d
```