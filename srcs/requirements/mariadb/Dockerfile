FROM debian:latest

# Install Nginx
RUN apt update -y
RUN apt upgrade -y

RUN apt install -y mariadb-server

COPY 50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY init.sql /etc/mysql/init.sql

RUN mkdir /run/mysqld

CMD ["mysqld"]