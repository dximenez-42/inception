FROM debian:buster

# Install Nginx
RUN apt-get update -y
RUN apt-get upgrade -y

RUN apt-get install -y dumb-init
RUN apt-get install -y nginx openssl

RUN openssl req -x509 -newkey rsa:4096 -subj /C=FR -nodes -keyout /etc/ssl/dximenez.42.fr.key -out /etc/ssl/dximenez.42.fr.crt

COPY ./conf/nginx.conf /etc/nginx/sites-available/dximenez.42.fr.conf
RUN ln -s /etc/nginx/sites-available/dximenez.42.fr.conf /etc/nginx/sites-enabled/dximenez.42.fr.conf

EXPOSE 443

ENTRYPOINT [ "/usr/bin/dumb-init", "--" ]
CMD ["nginx", "-g", "daemon off;"]