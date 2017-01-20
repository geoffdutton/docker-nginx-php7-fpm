FROM richarvey/nginx-php-fpm:php7

ENV DEBIAN_FRONTEND noninteractive
ENV TERM xterm

RUN apk add --no-cache nano php7-mbstring php7-apcu php7-opcache

COPY ./config/php-fpm/www.conf /etc/php7/php-fpm.d/www.conf
COPY ./config/index.php /var/www/html/index.php
COPY ./config/test.html /var/www/test.html

EXPOSE 80