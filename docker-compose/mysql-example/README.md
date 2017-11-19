เริ่มต้นการใช้งาน Docker Engine CE (Free Version)
---------------------------------------------------

```
sudo mkdir -p /build && cd /build

sudo apt-get install git -y && sudo git clone https://github.com/drivesoft-technology/docker-awesome.git

cd /build/docker-awesome
```


ติดตั้ง Docker Engine CE v17.09.0
---------------------------------------------------

```
bash /build/docker-awesome/docker-install/install-docker-engine-on-ubuntu16.sh
```


ติดตั้ง Docker Compose v1.17.0
---------------------------------------------------

```
bash /build/docker-awesome/docker-install/install-docker-compose-on-ubuntu16.sh
```


ติดตั้ง MySQL v5.7.20 + PhpMyAdmin v4.7.3-1
---------------------------------------------------

```
cd /build/docker-awesome/docker-compose/mysql-example

docker-compose up -d
```

```
http://[IP ADDRESS]:8080 << ตัวอย่าง PhpMyAdmin v4.7.3-1
```
