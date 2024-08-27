<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <title> Welcome to nginx! </title>
        <style> body { width: 35em; margin: 0 auto; font-family: Tahoma, Verdana, Arial, sans-serif; } </style>
    </head>
    <body>
        <h1> Welcome to nginx (<?php echo !empty($_SERVER['SERVER_ADDR']) ? $_SERVER['SERVER_ADDR'] : (!empty($_SERVER['REMOTE_ADDR']) ? $_SERVER['REMOTE_ADDR'] : ''); ?>) </h1>
        <p> If you see this page, the nginx web server is successfully installed and working. Further configuration is required. </p>
        <p> For online documentation and support please refer to <a href="http://nginx.org/"> nginx.org </a>.<br/> Commercial support is available at <a href="http://nginx.com/"> nginx.com </a>. </p>
        <p><em> Thank you for using nginx. </em></p>
    </body>
</html>
