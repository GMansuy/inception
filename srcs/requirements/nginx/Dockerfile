FROM	debian:buster

RUN 	apt-get update && \
	 	apt-get install -y nginx openssl

COPY	./conf/nginx.conf /etc/nginx/conf.d/default.conf

RUN		mkdir /etc/nginx/ssl

RUN		openssl req -x509 -nodes -days 365 -newkey rsa:4096 \
		-out /etc/nginx/ssl/gmansuy.crt \
 		-keyout /etc/nginx/ssl/gmansuy.key \
		-subj "/C=FR/ST=IDF/L=Paris/O=42/OU=gmansuy/CN=gmansuy.42.fr";

EXPOSE 443

CMD	[ "nginx", "-g", "daemon off;" ]
