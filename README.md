Docker PHP-FPM 7.1 & Nginx 1.12 on Alpine Linux
==============================================
Lightweight container with Nginx 1.12 & PHP-FPM 7.1 based on build on [Alpine Linux](http://www.alpinelinux.org/). Adapted to use a docker-compose file and my own choice of packages - Big thanks to TrafeX/docker-php-nginx

Usage
-----
Start your Docker container:

    docker-compose up

See the PHP info on http://localhost, or the static html page on http://localhost/test.html

Bash into your Docker container

    docker-compose exec app /bin/sh
