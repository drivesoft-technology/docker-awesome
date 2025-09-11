Getting started for Docker Engine CE (Free Version)
---------------------------------------------------

```
sudo mkdir -p /build && cd /build

sudo apt-get install git -y

sudo git clone https://github.com/drivesoft-technology/docker-awesome.git

cd /build/docker-awesome
```


Install Docker Engine CE v27.1.2 (Free Version)
---------------------------------------------------

```
bash docker-install/install-docker-engine-on-ubuntu24.sh
```


Install Docker Compose v2.29.1
---------------------------------------------------

```
bash docker-install/install-docker-compose-on-ubuntu24.sh
```


Install MariaDB v11.8.3 + PhpMyAdmin v5.2.2
---------------------------------------------------

```
sudo docker-compose -f docker-compose/mariadb-example/docker-compose.yml up -d
```

```
http://[IP ADDRESS]:8080 << Demo. PhpMyAdmin v5.2.2
```