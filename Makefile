all:
	mkdir  -p ~/data/mariadb
	mkdir  -p ~/data/wordpress
	docker compose -f ./srcs/docker-compose.yml up -d --build
clean:
	docker compose -f ./srcs/docker-compose.yml down -v
	sudo rm -rf /home/aankote/data

re : clean all

fclean :
	docker images -q | xargs docker rmi -f
start :
	docker start mariadb
	docker start wordpress
	docker start  nginx

stop :
	docker stop  wordpress
	docker stop  nginx
	docker stop mariadb

restart : stop start

.PHONY : all clean re fclean start stop restart