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


ติดตั้ง Nginx v1.12.2
---------------------------------------------------

```
cd /build/docker-awesome/docker-compose/nginx-example

docker-compose up -d
```

```
http://[IP ADDRESS] << ตัวอย่าง Nginx 1.12.2
```
