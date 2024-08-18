FROM debian:buster

# Install Nginx
RUN apt update -y
RUN apt upgrade -y

RUN apt install -y nginx openssl

# Generate SSL certificate
RUN openssl req -x509 -newkey rsa:4096 -subj "/C=ES/ST=Madrid/L=Madrid/O=42/OU=42Madrid/CN=dximenez.42.fr" -nodes -keyout /etc/ssl/dximenez.42.fr.key -out /etc/ssl/dximenez.42.fr.crt

COPY ./conf/default /etc/nginx/sites-available/default

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]