FROM debian:buster

RUN	apt update; apt upgrade -y;

RUN	apt install -y nginx openssl neovim ;

COPY	./conf/default /etc/nginx/sites-available/
COPY	./conf/ssl-params.conf /etc/nginx/snippets/
COPY	./conf/self-signed.conf /etc/nginx/snippets/
COPY	./tools/nginx-selfsigned.crt /etc/ssl/certs/
COPY	./tools/nginx-selfsigned.key /etc/ssl/private/

RUN	mkdir -p /var/www/wordpress

RUN	    openssl dhparam -out /etc/nginx/dhparam.pem 4096

ENTRYPOINT	["/bin/bash", "-c", "nginx -g 'daemon off;'"]

CMD	["/bin/bash/"]
