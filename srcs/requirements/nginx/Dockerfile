FROM debian:buster

# Install Nginx
RUN apt update -y
RUN apt upgrade -y

RUN apt install -y nginx openssl

# Generate SSL certificate
RUN openssl req -x509 -newkey rsa:4096 -subj /C=FR -nodes -keyout /etc/ssl/dximenez.42.fr.key -out /etc/ssl/dximenez.42.fr.crt

COPY default /etc/nginx/sites-available/default

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]