DOCKER = docker compose -f srcs/docker-compose.yml

all: up

up:
	$(DOCKER) up --detach --build

start: 
	$(DOCKER) start

down: 
	$(DOCKER) down

stop:
	$(DOCKER) stop

clean:
	rm -rf /Users/dani/data/mariadb/* /Users/dani/data/wordpress/*
	$(DOCKER) down --rmi all --volumes

fclean: clean
