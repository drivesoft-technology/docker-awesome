เริ่มต้นการใช้งาน (Docker Engine)
---------------------------------------------------

```
sudo mkdir -p /build && cd /build

sudo apt-get install git -y && sudo git clone https://github.com/drivesoft-technology/docker-awesome.git

cd /build/docker-awesome && sudo git pull origin master
```


ติดตั้ง Docker Engine v17.03.0
---------------------------------------------------

```
bash /build/docker-awesome/docker-install/install-docker-engine-on-ubuntu16.sh
```


ติดตั้ง Docker Compose v1.11.2
---------------------------------------------------

```
bash /build/docker-awesome/docker-install/install-docker-compose-on-ubuntu16.sh
```


ติดตั้ง Nginx v1.11.10
---------------------------------------------------

```
cd /build/docker-awesome/docker-compose/nginx-example

docker-compose up -d
```

```
http://[IP ADDRESS] << ตัวอย่าง Nginx 1.11.10
```
