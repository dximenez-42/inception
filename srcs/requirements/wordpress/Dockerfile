FROM debian:buster

# Install packages
RUN apt update && apt install -y \
    wget \
    curl \
    bash \
    php \
    php-cgi \
    php-mysql \
    php-fpm \
    php-pdo \
    php-gd php-cli \
    php-mbstring

RUN rm -rf /var/lib/apt/lists/*

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
    && chmod +x wp-cli.phar \
    && mv wp-cli.phar /usr/local/bin/wp

COPY ./conf/wordpress.conf /etc/php/7.3/fpm/pool.d

RUN mkdir /run/php

COPY ./tools/wp_setup.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/wp_setup.sh
ENTRYPOINT ["/usr/local/bin/wp_setup.sh"]

WORKDIR /var/www/html

EXPOSE 9000

CMD ["/usr/sbin/php-fpm7.3", "-F"]