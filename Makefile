all: up

up: 
	docker-compose -f ./srcs/docker-compose.yml up -d

start: 
	docker-compose -f ./srcs/docker-compose.yml start

down: 
	docker-compose -f ./srcs/docker-compose.yml down

stop: 
	docker-compose -f ./srcs/docker-compose.yml stop

clean: stop
	docker-compose -f ./srcs/docker-compose.yml rm
	docker-compose -f ./srcs/docker-compose.yml down --volumes --remove-orphans
