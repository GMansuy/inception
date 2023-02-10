FROM	debian:buster

RUN	apt update -y; apt upgrade -y;

RUN	apt install -y mariadb-server neovim;

COPY	./tools /var/www
COPY	./conf /etc/mysql/mariadb.conf.d/

RUN	service mysql start && mysql < /var/www/install.sql;

ENTRYPOINT ["mysqld"]
