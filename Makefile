all:
	mkdir  -p ~/data/mariadb
	mkdir  -p ~/data/wordpress
	mkdir  -p ~/data/mariadb
	mkdir  -p ~/data/redis
	mkdir  -p ~/data/FTP
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
	docker start  redis
stop :
	docker stop  wordpress
	docker stop  nginx
	docker stop  mariadb
	docker stop  redis
	# docker stop  ftp

restart : stop start

.PHONY : all clean re fclean start stop restart