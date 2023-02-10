FROM	debian:buster

RUN	apt update -y; apt upgrade -y;

RUN	apt install -y php-fpm php-mysql neovim wget;

WORKDIR	/var/www/
RUN	["wget", "https://wordpress.org/latest.tar.gz"]
RUN	["tar", "xf", "latest.tar.gz"]

COPY	./conf/www.conf /etc/php/7.3/fpm/pool.d/

RUN		mkdir -p /run/php/
ENTRYPOINT	["/bin/bash", "-c", "php-fpm7.3 -F -R"]
