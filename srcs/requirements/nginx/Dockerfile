FROM	debian:buster

#install nginx and openssl packages
RUN 	apt-get update && \
	 	apt-get install -y nginx openssl

#put my own nginx configuration to nginx
COPY	./conf/nginx.conf /etc/nginx/conf.d/default.conf

#create the folder to the certificate for https protocole
RUN		mkdir /etc/nginx/ssl

#run openssl with the key and the certificate
RUN		openssl req -x509 -nodes -days 365 -newkey rsa:4096 \
		-out /etc/nginx/ssl/gmansuy.crt \
 		-keyout /etc/nginx/ssl/gmansuy.key \
		-subj "/C=FR/ST=IDF/L=Paris/O=42/OU=gmansuy/CN=gmansuy.42.fr";

EXPOSE 443

CMD	[ "nginx", "-g", "daemon off;" ]
