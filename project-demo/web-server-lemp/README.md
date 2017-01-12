เริ่มต้นการใช้งาน (Docker Engine)
---------------------------------------------------

```
sudo mkdir -p /build && cd /build

sudo apt-get install git -y && sudo git clone https://github.com/drivesoft-technology/docker-awesome.git

cd /build/docker-awesome && sudo git pull origin master
```


ติดตั้ง Docker Engine v1.12.4
---------------------------------------------------

```
bash /build/docker-awesome/docker-install/install-docker-engine-on-ubuntu16.sh
```


ติดตั้ง Docker Compose v1.8.1
---------------------------------------------------

```
bash /build/docker-awesome/docker-install/install-docker-compose-on-ubuntu16.sh
```


ติดตั้ง LEMP (Linux-Nginx-MariaDB-Php7)
---------------------------------------------------

```
bash /build/docker-awesome/project-demo/web-server-lemp/script-shell.sh
```

```
http://[IP ADDRESS] << ตัวอย่าง Nginx 1.11.8

http://[IP ADDRESS]/info.php << ตัวอย่าง PHP 7.0.14 (Info) 

http://[IP ADDRESS]:8080 << ตัวอย่าง PhpMyAdmin 4.6
```
