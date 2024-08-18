#!/bin/bash
cd /var/www/html
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
./wp-cli.phar core download --allow-root
./wp-cli.phar config create --dbname=$DB_DATABASE --dbuser=$DB_USER_NAME --dbpass=$DB_USER_PASSWORD --dbhost=$DB_HOSTNAME --allow-root
./wp-cli.phar core install --url=$DOMAIN_NAME --title=Inception --admin_user=$WP_USER --admin_password=$WP_PASSWORD --admin_email=$WP_EMAIL --allow-root

php-fpm7.3 -F