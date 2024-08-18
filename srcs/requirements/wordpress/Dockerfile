FROM debian:buster

# Install WordPress
RUN apt update -y
RUN apt upgrade -y

RUN apt install -y \
    php7.3-fpm \
    php7.3-mysqli \
    curl

COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d/www.conf

COPY ./tools/wp_setup.sh .
RUN chmod +x wp_setup.sh

RUN mkdir /run/php

CMD ["./wp_setup.sh"]