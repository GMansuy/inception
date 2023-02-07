FROM debian:buster

RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install nginx -y
RUN apt-get install vim -y

RUN apt-get install openssl -y
RUN mkdir /etc/nginx/ssl
RUN openssl req -x509 -nodes -out /etc/nginx/ssl/public.crt -keyout /etc/nginx/ssl/private.key -subj "/C=FR/ST=IDF/L=Paris/O=42/OU=42/CN=gmansuy.42.fr/UID=gmansuy"

COPY ./conf/nginx.conf /etc/nginx/nginx.conf

#ENTRYPOINT ["service", "nginx", "start"]
CMD ["nginx", "-g", "daemon off;"]
