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


Install MySQL v5.7.23 + PhpMyAdmin v4.8.3
---------------------------------------------------

```
sudo docker-compose -f docker-compose/mysql-example/docker-compose.yml up -d
```

```
http://[IP ADDRESS]:8080 << Demo. PhpMyAdmin v4.8.3
```