FROM debian:buster

# Install MariaDB
RUN apt-get update -y
RUN apt-get upgrade -y

RUN apt-get install -y dumb-init
RUN apt-get install -y mariadb-server

RUN mkdir -p /var/run/mysqld \
    && chown -R mysql:mysql /var/run/mysqld

COPY ./conf/mariadb.conf /etc/mysql/mariadb.conf.d/50-server.cnf

EXPOSE 3306

ENTRYPOINT ["/usr/bin/dumb-init", "--"]
CMD ["mysqld", "--user=mysql", "--console"]