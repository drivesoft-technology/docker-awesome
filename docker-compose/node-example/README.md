เริ่มต้นการใช้งาน Docker Engine CE (Free Version)
---------------------------------------------------

```
sudo mkdir -p /build && cd /build

sudo apt-get install git -y && sudo git clone https://github.com/drivesoft-technology/docker-awesome.git

cd /build/docker-awesome && sudo git pull origin master
```


ติดตั้ง Docker Engine CE v17.06.0
---------------------------------------------------

```
bash /build/docker-awesome/docker-install/install-docker-engine-on-ubuntu16.sh
```


ติดตั้ง Docker Compose v1.14.0
---------------------------------------------------

```
bash /build/docker-awesome/docker-install/install-docker-compose-on-ubuntu16.sh
```


ติดตั้ง Node v6.11.1
---------------------------------------------------

```
cd /build/docker-awesome/docker-compose/node-example

docker-compose up -d
```

```
http://[IP ADDRESS]:8000 << ตัวอย่าง Node.js + Express.js
```
