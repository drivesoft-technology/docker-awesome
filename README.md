Getting started for Docker Engine CE (Free Version)
---------------------------------------------------

```
sudo mkdir -p /build && cd /build

sudo apt-get install git -y && sudo git clone https://github.com/drivesoft-technology/docker-awesome.git

cd /build/docker-awesome
```


Install Docker Engine CE v18.06.1 (Free Version)
---------------------------------------------------

```
bash /build/docker-awesome/docker-install/install-docker-engine-on-ubuntu18.sh
```


Install Docker Compose v1.22.0
---------------------------------------------------

```
bash /build/docker-awesome/docker-install/install-docker-compose-on-ubuntu18.sh
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
http://[IP ADDRESS] << Demo. Nginx v1.15.4-alpine

http://[IP ADDRESS]/info.php << Demo. PHP v7.2.10 (FPM) 

http://[IP ADDRESS]:8080 << Demo. PhpMyAdmin v4.8.3
```



Install Layer 4 Load Balancing (Load + Server + DB)
---------------------------------------------------

```
bash /build/docker-awesome/project-demo/load-balancing-layer-4/script-shell.sh
```

```
http://[IP ADDRESS] << Demo. Nginx v1.15.4-alpine

http://[IP ADDRESS]:8000 << Demo. HAProxy Status v1.8.2-alpine

http://[IP ADDRESS]/info.php << Demo. PHP v7.2.10 (FPM) 
```


Install Nginx v1.15.4-alpine + PHP v7.2.10 (FPM)
---------------------------------------------------

```
cd /build/docker-awesome/docker-compose/nginx-php7-fpm

docker-compose up -d
```

```
http://[IP ADDRESS] << Demo. Nginx v1.15.4-alpine

http://[IP ADDRESS]/info.php << Demo. PHP v7.2.10 (FPM) 
```


Install Nginx v1.15.4-alpine + PHP v7.2.10 (FPM) + Phalcon v3.4.1
---------------------------------------------------

```
cd /build/docker-awesome/docker-compose/phalcon-php7-fpm

docker-compose up -d
```

```
http://[IP ADDRESS] << Demo. Nginx v1.15.4-alpine

http://[IP ADDRESS]/info.php << Demo. PHP v7.2.10 (Info) 
```


Install Nginx v1.15.4-alpine
---------------------------------------------------

```
cd /build/docker-awesome/docker-compose/nginx-example

docker-compose up -d
```

```
http://[IP ADDRESS] << Demo. Nginx v1.15.4-alpinene
```


Install PHP v7.2.10 (FPM)
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


Install MySQL v5.7.23 + PhpMyAdmin v4.8.3
---------------------------------------------------

```
cd /build/docker-awesome/docker-compose/mysql-example

docker-compose up -d
```

```
http://[IP ADDRESS]:8080 << Demo. PhpMyAdmin v4.8.3
```


Install MariaDB v10.3.10 + PhpMyAdmin v4.8.3
---------------------------------------------------

```
cd /build/docker-awesome/docker-compose/mariadb-example

docker-compose up -d
```

```
http://[IP ADDRESS]:8080 << Demo. PhpMyAdmin v4.8.3
```


Install MongoDB v4.1.3
---------------------------------------------------

```
cd /build/docker-awesome/docker-compose/mongo-example

docker-compose up -d
```


Install Redis Database v4.0.11-alpine
---------------------------------------------------

```
cd /build/docker-awesome/docker-compose/redis-example

docker-compose up -d
```
