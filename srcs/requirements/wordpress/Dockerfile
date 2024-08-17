FROM debian:latest

# Install WordPress
RUN apt update -y
RUN apt upgrade -y

RUN apt install -y \
    php-fpm \
    php-mysqli \
    curl

COPY www.conf /etc/php/8.2/fpm/pool.d/www.conf

COPY wp_setup.sh .
RUN chmod +x wp_setup.sh

CMD ["./wp_setup.sh"]