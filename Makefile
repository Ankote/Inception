all: up

up: build
	docker compose -f srcs/docker-compose.yml up

build:
	mkdir  -p ~/data/mariadb
	mkdir  -p ~/data/wordpress
	mkdir  -p ~/data/ftp
	docker compose -f srcs/docker-compose.yml build

down:
	docker compose -f srcs/docker-compose.yml down -v

clean: down
	docker compose -f srcs/docker-compose.yml down --rmi all

fclean: clean
	sudo rm -rf ~/data/*

re : fclean all