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


Build NODE RESTAPI
---------------------------------------------------


```
cd /build/docker-awesome/docker-build/node-with-restapi/build
docker build -t build/noderestapi:8.9.4 .
```


```
cd /build/docker-awesome/docker-build/node-with-restapi/app
npm install
```


```
cd /build/docker-awesome/docker-build/node-with-restapi
docker-compose up -d && docker ps -a
```


Example
---------------------------------------------------

```
http://localhost:8081
```