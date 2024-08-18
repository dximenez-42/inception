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

fclean:
	docker stop $$(docker ps -qa)
	docker rm $$(docker ps -qa)
	docker rmi -f $$(docker images -qa)
	docker volume rm $$(docker volume ls -q)
	docker network rm $$(docker network ls -q) 2>/dev/null


