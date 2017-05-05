เริ่มต้นการใช้งาน Docker Engine CE (Free Version)
---------------------------------------------------

```
sudo mkdir -p /build && cd /build

sudo apt-get install git -y && sudo git clone https://github.com/drivesoft-technology/docker-awesome.git

cd /build/docker-awesome && sudo git pull origin master
```


ติดตั้ง Docker Engine CE v17.05.0
---------------------------------------------------

```
bash /build/docker-awesome/docker-install/install-docker-engine-on-ubuntu16.sh
```


ติดตั้ง Docker Compose v1.12.0
---------------------------------------------------

```
bash /build/docker-awesome/docker-install/install-docker-compose-on-ubuntu16.sh
```


ติดตั้ง Nginx v1.13.0 + PHP v7.1.4 + Phalcon v3.1.2
---------------------------------------------------

```
cd /build/docker-awesome/docker-compose/phalcon-php7-fpm

docker-compose up -d
```

```
http://[IP ADDRESS] << ตัวอย่าง Nginx v1.13.0

http://[IP ADDRESS]/info.php << ตัวอย่าง PHP v7.1.4 (Info) 
```
