DOCKER = docker compose -f srcs/docker-compose.yml

all: up

up:
	$(DOCKER) up --detach --build

start: 
	$(DOCKER) start

down: 
	$(DOCKER) down

down-v:
	$(DOCKER) down --volumes

stop:
	$(DOCKER) stop

clean:
	$(DOCKER) down --rmi all --volumes

fclean: clean
