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


ติดตั้ง Nginx v1.13.3 + PHP v7.1.7 + Phalcon v3.2.1
---------------------------------------------------

```
cd /build/docker-awesome/docker-compose/phalcon-php7-fpm

docker-compose up -d
```

```
http://[IP ADDRESS] << ตัวอย่าง Nginx v1.13.3

http://[IP ADDRESS]/info.php << ตัวอย่าง PHP v7.1.7 (Info) 
```
