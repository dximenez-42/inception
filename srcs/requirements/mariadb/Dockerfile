FROM debian:buster

# Install Nginx
RUN apt update -y
RUN apt upgrade -y

RUN apt install -y mariadb-server gettext


COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY .env /etc/mysql/.env

COPY ./tools/init.sql /etc/mysql/init.temp.sql
COPY ./tools/substitute_env_vars.sh /usr/local/bin/substitute_env_vars.sh
RUN chmod +x /usr/local/bin/substitute_env_vars.sh
RUN /usr/local/bin/substitute_env_vars.sh
RUN rm /etc/mysql/init.temp.sql
RUN rm /etc/mysql/.env

RUN mkdir /run/mysqld

COPY ./tools/mariadb_setup.sh .
RUN chmod +x mariadb_setup.sh

CMD ["./mariadb_setup.sh"]