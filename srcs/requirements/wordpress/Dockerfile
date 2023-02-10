FROM	debian:buster

RUN	apt update -y; apt upgrade -y;

RUN	apt install -y php-fpm php-mysql neovim wget curl;

WORKDIR	/var/www/
RUN	["wget", "https://wordpress.org/latest.tar.gz"]
RUN	["tar", "xf", "latest.tar.gz"]

# Install wordpress CLI tool
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

COPY	./conf/www.conf /etc/php/7.3/fpm/pool.d/

RUN		mkdir -p /run/php/

#COPY	./conf/wp-config.php ./wordpress
#ENTRYPOINT	["/bin/bash", "-c", "php-fpm7.3 -F -R"]

COPY ./tools/wp.sh ./
RUN chmod +x wp.sh

CMD ["./wp.sh"]
