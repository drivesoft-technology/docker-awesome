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


ติดตั้ง Nginx v1.11.10 + PHP v7.0.16 + Phalcon v3.0.2
---------------------------------------------------

```
cd /build/docker-awesome/docker-compose/phalcon-php7-fpm

docker-compose up -d
```

```
http://[IP ADDRESS] << ตัวอย่าง Nginx v1.11.10

http://[IP ADDRESS]/info.php << ตัวอย่าง PHP v7.0.16 (Info) 
```
