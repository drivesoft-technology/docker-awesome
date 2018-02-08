Getting started for Docker Engine CE (Free Version)
---------------------------------------------------

```
sudo mkdir -p /build && cd /build

sudo apt-get install git -y && sudo git clone https://github.com/drivesoft-technology/docker-awesome.git

cd /build/docker-awesome
```


Install Docker Engine CE v17.12.0 (Free Version)
---------------------------------------------------

```
bash /build/docker-awesome/docker-install/install-docker-engine-on-ubuntu16.sh
```


Install Docker Compose v1.19.0
---------------------------------------------------

```
bash /build/docker-awesome/docker-install/install-docker-compose-on-ubuntu16.sh
```


Install CTOP Monitor Containers
---------------------------------------------------

```
bash /build/docker-awesome/docker-install/install-ctop-monitor.sh
```


Install LEMP (Linux-Nginx-MariaDB-Php7)
---------------------------------------------------

```
bash /build/docker-awesome/project-demo/web-server-lemp/script-shell.sh
```

```
http://[IP ADDRESS] << Demo. Nginx v1.12.2-alpine

http://[IP ADDRESS]/info.php << Demo. PHP v7.2.2 (FPM) 

http://[IP ADDRESS]:8080 << Demo. PhpMyAdmin v4.7.7-1
```



Install Layer 4 Load Balancing (Load + Server + DB)
---------------------------------------------------

```
bash /build/docker-awesome/project-demo/load-balancing-layer-4/script-shell.sh
```

```
http://[IP ADDRESS] << Demo. Nginx v1.12.2-alpine

http://[IP ADDRESS]:8000 << Demo. HAProxy Status v1.8.2-alpine

http://[IP ADDRESS]/info.php << Demo. PHP v7.2.2 (FPM) 
```


Install Nginx v1.12.2-alpine + PHP v7.2.2 (FPM)
---------------------------------------------------

```
cd /build/docker-awesome/docker-compose/nginx-php7-fpm

docker-compose up -d
```

```
http://[IP ADDRESS] << Demo. Nginx v1.12.2-alpine

http://[IP ADDRESS]/info.php << Demo. PHP v7.2.2 (FPM) 
```


Install Nginx v1.12.2-alpine + PHP v7.2.2 (FPM) + Phalcon v3.3.1
---------------------------------------------------

```
cd /build/docker-awesome/docker-compose/phalcon-php7-fpm

docker-compose up -d
```

```
http://[IP ADDRESS] << Demo. Nginx v1.12.2-alpine

http://[IP ADDRESS]/info.php << Demo. PHP v7.2.2 (Info) 
```


Install Nginx v1.12.2-alpine
---------------------------------------------------

```
cd /build/docker-awesome/docker-compose/nginx-example

docker-compose up -d
```

```
http://[IP ADDRESS] << Demo. Nginx v1.12.2-alpine
```


Install PHP v7.2.2 (FPM)
---------------------------------------------------

```
cd /build/docker-awesome/docker-compose/php7-example

docker-compose up -d
```


Install Node v8.9.4-alpine
---------------------------------------------------

```
cd /build/docker-awesome/docker-compose/node-example

docker-compose up -d
```

```
http://[IP ADDRESS]:8000 << Demo. Node.js + Express.js
```


Install MySQL v5.7.21 + PhpMyAdmin v4.7.7-1
---------------------------------------------------

```
cd /build/docker-awesome/docker-compose/mysql-example

docker-compose up -d
```

```
http://[IP ADDRESS]:8080 << Demo. PhpMyAdmin v4.7.7-1
```


Install MariaDB v10.2.12 + PhpMyAdmin v4.7.7-1
---------------------------------------------------

```
cd /build/docker-awesome/docker-compose/mariadb-example

docker-compose up -d
```

```
http://[IP ADDRESS]:8080 << Demo. PhpMyAdmin v4.7.7-1
```


Install MongoDB v3.6.2-alpine
---------------------------------------------------

```
cd /build/docker-awesome/docker-compose/mongo-example

docker-compose up -d
```


Install Redis Database v4.0.6-alpine
---------------------------------------------------

```
cd /build/docker-awesome/docker-compose/redis-example

docker-compose up -d
```
