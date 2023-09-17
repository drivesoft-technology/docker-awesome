Getting started for Docker Engine CE (Free Version)
---------------------------------------------------

```
sudo mkdir -p build && cd build

sudo apt-get install git -y
sudo git clone https://github.com/drivesoft-technology/docker-awesome.git

cd docker-awesome
```


Install Docker Engine v24.0.6 (Free Version)
---------------------------------------------------

```
bash docker-install/install-docker-engine-on-ubuntu22.sh
```


Install CTOP Monitor Containers
---------------------------------------------------

```
bash docker-install/install-ctop-monitor.sh
```


Install LEMP (Linux-Nginx-MariaDB-Php82)
---------------------------------------------------

```
sudo docker-compose -f project-demo/lemp-stack/docker-compose.yml up -d
```

```
http://[IP ADDRESS] << Demo. Nginx v1.25.2-alpine

http://[IP ADDRESS]/info.php << Demo. PHP v8.2.10 (FPM) 

http://[IP ADDRESS]:8080 << Demo. PhpMyAdmin v5.2.1
```


Install Multi Domain (Load + Server + DB)
---------------------------------------------------

```
sudo docker-compose -f project-demo/multi-domain/docker-compose.yml up -d
```

```
http://[IP ADDRESS] << Demo. Nginx v1.25.2-alpine

http://[IP ADDRESS]/info.php << Demo. PHP v8.2.10 (FPM) 

http://[IP ADDRESS]:8080 << Demo. PhpMyAdmin v5.2.1
```


Install Layer 4 Load Balancing (Load + Server + DB)
---------------------------------------------------

```
sudo docker-compose -f project-demo/load-balancing-layer-4/docker-compose.yml up -d
```

```
http://[IP ADDRESS] << Demo. Nginx v1.25.2-alpine

http://[IP ADDRESS]:8000 << Demo. HAProxy Status v1.8.2-alpine

http://[IP ADDRESS]/info.php << Demo. PHP v8.2.10 (FPM) 
```


Install Nginx v1.25.2-alpine + PHP v8.2.10 (FPM)
---------------------------------------------------

```
sudo docker-compose -f docker-compose/nginx-php82-fpm/docker-compose.yml up -d
```

```
http://[IP ADDRESS] << Demo. Nginx v1.25.2-alpine

http://[IP ADDRESS]/info.php << Demo. PHP v8.2.10 (FPM) 
```


Install Nginx v1.25.2-alpine + PHP v8.2.10 (FPM) + Phalcon v5.3.1
---------------------------------------------------

```
sudo docker-compose -f docker-compose/phalcon-php82-fpm/docker-compose.yml up -d
```

```
http://[IP ADDRESS] << Demo. Nginx v1.25.2-alpine

http://[IP ADDRESS]/info.php << Demo. PHP v8.2.10 (Info) 
```


Install Nginx v1.25.2-alpine
---------------------------------------------------

```
sudo docker-compose -f docker-compose/nginx-example/docker-compose.yml up -d
```

```
http://[IP ADDRESS] << Demo. Nginx v1.25.2-alpinene
```


Install PHP v8.2.10 (FPM)
---------------------------------------------------

```
sudo docker-compose -f docker-compose/php82-example/docker-compose.yml up -d
```


Install Node v14.17.1-alpine
---------------------------------------------------

```
sudo docker-compose -f docker-compose/node-example/docker-compose.yml up -d
```

```
http://[IP ADDRESS]:8000 << Demo. Node.js + Express.js
```


Install MySQL v8.0.25 + PhpMyAdmin v5.2.1
---------------------------------------------------

```
sudo docker-compose -f docker-compose/mysql-example/docker-compose.yml up -d
```

```
http://[IP ADDRESS]:8080 << Demo. PhpMyAdmin v5.2.1
```


Install MariaDB v11.1.2 + PhpMyAdmin v5.2.1
---------------------------------------------------

```
sudo docker-compose -f docker-compose/mariadb-example/docker-compose.yml up -d
```

```
http://[IP ADDRESS]:8080 << Demo. PhpMyAdmin v5.2.1
```


Install MongoDB v6.0.10
---------------------------------------------------

```
sudo docker-compose -f docker-compose/mongo-example/docker-compose.yml up -d
```


Install Redis Database v7.2.1-alpine
---------------------------------------------------

```
sudo docker-compose -f docker-compose/redis-example/docker-compose.yml up -d
```
