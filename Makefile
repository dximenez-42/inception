DOCKER = docker compose -f srcs/docker-compose.yml

all: up

up:
	@cp srcs/.env srcs/requirements/mariadb/.env
	$(DOCKER) up --detach --build
	@rm srcs/requirements/mariadb/.env


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
