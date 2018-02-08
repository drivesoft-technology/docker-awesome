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


Install Multi Domain & LEMP (Linux-Nginx-MariaDB-Php7)
---------------------------------------------------

```
bash /build/docker-awesome/project-demo/multi-domain/script-shell.sh
```

```
http://[IP ADDRESS] << Demo. Nginx v1.12.2-alpine

http://[IP ADDRESS]/info.php << Demo. PHP v7.2.2 (Info) 

http://[IP ADDRESS]:8080 << Demo. PhpMyAdmin v4.7.7-1
```
