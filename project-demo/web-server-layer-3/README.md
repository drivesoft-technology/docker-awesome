เริ่มต้นการใช้งาน (Docker Engine)
---------------------------------------------------

```
sudo mkdir -p /build && cd /build

sudo apt-get install git -y && sudo git clone https://github.com/drivesoft-newage/docker-awesome.git

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


ติดตั้ง Layer 4 Load Balancing (Load balance + Server + Database)
---------------------------------------------------

```
bash /build/docker-awesome/project-demo/web-server-layer-4/script-shell.sh
```

```
http://[IP ADDRESS] << ตัวอย่าง Nginx v1.11.5

http://[IP ADDRESS]:8000 << ตัวอย่าง HAProxy Status v1.7.1

http://[IP ADDRESS]/info.php << ตัวอย่าง PHP v7.0.14 (Info) 
```
