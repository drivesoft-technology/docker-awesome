Getting Started
---------------------------------------------------

`sudo apt-get install git -y`

`sudo mkdir -p /build && cd /build`

`sudo git clone https://github.com/drivesoft-newage/docker-awesome.git`

`cd /build/docker-awesome/docker-compose/nginx-php7-fpm`

`docker-compose up -d`



Test
---------------------------------------------------
`http://localhost/` << index.html

`http://localhost/info.php` << php info();
