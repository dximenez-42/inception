FROM debian:latest

# Install Nginx
RUN apt update -y
RUN apt upgrade -y

RUN apt install -y nginx

COPY default /etc/nginx/sites-available/default

CMD ["nginx", "-g", "daemon off;"]