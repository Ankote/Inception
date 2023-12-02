all:
	mkdir  -p ~/data/mariadb
	mkdir  -p ~/data/wordpress
	mkdir  -p ~/data/mariadb
	mkdir  -p ~/data/redis
	mkdir  -p ~/data/FTP
	docker compose -f ./srcs/docker-compose.yml up  --build
clean:
	docker compose -f ./srcs/docker-compose.yml down -v
	sudo rm -rf /home/aankote/data

re : clean all

fclean :
	docker images -q | xargs docker rmi -f
start :
	docker start $(docker container ls -a)
stop :
	docker stop $(docker compose ps -qa)

restart : stop start

.PHONY : all clean re fclean start stop restart