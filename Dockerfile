FROM alpine:3.6
LABEL Maintainer="Dave Fuller <dave@accentdesign.co.uk>" \
      Description="Lightweight container with Nginx 1.12 & PHP-FPM 7.1 based on Alpine Linux. Adapted to use a docker-compose file and my own choice of packages - Big thanks to TrafeX/docker-php-nginx"

# Install packages
RUN apk --no-cache add \
    curl \
    nginx \
    php7 \
    php7-ctype \
    php7-curl \
    php7-dom \
    php7-fpm \
    php7-gd \
    php7-json \
    php7-intl \
    php7-mbstring \
    php7-mysqli \
    php7-openssl \
    php7-phar \
    php7-xml \
    php7-xmlreader \
    php7-zlib \
    supervisor
    
# Create webroot directories
RUN mkdir -p /var/www/html
WORKDIR /var/www/html

EXPOSE 80
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]
