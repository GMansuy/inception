FROM	debian:buster

RUN	apt update -y; apt upgrade -y;

RUN	apt install -y mariadb-server neovim;

COPY	./tools/install.sql /var/www/install.sql
COPY	./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

RUN	service mysql start && mysql < /var/www/install.sql;

ENTRYPOINT ["mysqld"]
