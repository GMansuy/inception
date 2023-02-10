all:
	docker-compose -f ./srcs/docker-compose.yml up -d

clean:
	docker-compose -f ./srcs/docker-compose.yml down

fclean:
	docker rmi -f mariadb wordpress nginx
	#docker container rm -f mariadb wordpress nginx
	docker network rm inception
	docker volume rm wordpress mariadb

re: clean all

.PHONY: all re clean

