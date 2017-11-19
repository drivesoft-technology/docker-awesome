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


Install LEMP (Linux-Nginx-MariaDB-Php7)
---------------------------------------------------

```
bash /build/docker-awesome/project-demo/web-server-lemp/script-shell.sh
```

```
http://[IP ADDRESS] << Demo. Nginx 1.12.2

http://[IP ADDRESS]/info.php << Demo. PHP 7.1.11 (Info) 

http://[IP ADDRESS]:8080 << Demo. PhpMyAdmin 4.7.3-1
```
