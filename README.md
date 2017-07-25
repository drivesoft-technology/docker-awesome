Getting started for Docker Engine CE (Free Version)
---------------------------------------------------

```
sudo mkdir -p /build && cd /build

sudo apt-get install git -y && sudo git clone https://github.com/drivesoft-technology/docker-awesome.git

cd /build/docker-awesome && sudo git pull origin master
```


Install Docker Engine CE v17.06.0 (Free Version)
---------------------------------------------------

```
bash /build/docker-awesome/docker-install/install-docker-engine-on-ubuntu16.sh
```


Install Docker Compose v1.14.0
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
http://[IP ADDRESS] << ตัวอย่าง Nginx v1.13.3

http://[IP ADDRESS]/info.php << ตัวอย่าง PHP v7.1.7 (Info) 

http://[IP ADDRESS]:8080 << ตัวอย่าง PhpMyAdmin v4.7.3-1
```



Install Layer 4 Load Balancing (Load + Server + DB)
---------------------------------------------------

```
bash /build/docker-awesome/project-demo/load-balancing-layer-4/script-shell.sh
```

```
http://[IP ADDRESS] << ตัวอย่าง Nginx v1.13.3

http://[IP ADDRESS]:8000 << ตัวอย่าง HAProxy Status v1.7.8

http://[IP ADDRESS]/info.php << ตัวอย่าง PHP v7.1.7 (Info) 
```


Install Nginx v1.13.3 + PHP v7.1.7
---------------------------------------------------

```
cd /build/docker-awesome/docker-compose/nginx-php7-fpm

docker-compose up -d
```

```
http://[IP ADDRESS] << ตัวอย่าง Nginx v1.13.3

http://[IP ADDRESS]/info.php << ตัวอย่าง PHP v7.1.7 (Info) 
```


Install Nginx v1.13.3 + PHP v7.1.7 + Phalcon v3.2.1
---------------------------------------------------

```
cd /build/docker-awesome/docker-compose/phalcon-php7-fpm

docker-compose up -d
```

```
http://[IP ADDRESS] << ตัวอย่าง Nginx v1.13.3

http://[IP ADDRESS]/info.php << ตัวอย่าง PHP v7.1.7 (Info) 
```


Install Nginx v1.13.3
---------------------------------------------------

```
cd /build/docker-awesome/docker-compose/nginx-example

docker-compose up -d
```

```
http://[IP ADDRESS] << ตัวอย่าง Nginx v1.13.3
```


Install PHP7-FPM v7.1.7
---------------------------------------------------

```
cd /build/docker-awesome/docker-compose/php7-example

docker-compose up -d
```


Install Node v6.11.1
---------------------------------------------------

```
cd /build/docker-awesome/docker-compose/node-example

docker-compose up -d
```

```
http://[IP ADDRESS]:8000 << ตัวอย่าง Node + Express
```


Install MySQL v5.7.19 + PhpMyAdmin v4.7.3-1
---------------------------------------------------

```
cd /build/docker-awesome/docker-compose/mysql-example

docker-compose up -d
```

```
http://[IP ADDRESS]:8080 << ตัวอย่าง PhpMyAdmin v4.7.3-1
```


Install MariaDB v10.3.0 + PhpMyAdmin v4.7.3-1
---------------------------------------------------

```
cd /build/docker-awesome/docker-compose/mariadb-example

docker-compose up -d
```

```
http://[IP ADDRESS]:8080 << ตัวอย่าง PhpMyAdmin v4.7.3-1
```


Install MongoDB v3.5.10
---------------------------------------------------

```
cd /build/docker-awesome/docker-compose/mongo-example

docker-compose up -d
```


Install Redis Database v4.0.1
---------------------------------------------------

```
cd /build/docker-awesome/docker-compose/redis-example

docker-compose up -d
```
