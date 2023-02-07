FROM debian:buster

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install mariadb-server -y

RUN sed -i "s/#port/port/g" /etc/mysql/mariadb.conf.d/50-server.cnf
RUN sed -i "s/127.0.0.1/*/g" /etc/mysql/mariadb.conf.d/50-server.cnf
COPY conf/setup_mariadb.sh /
RUN chmod 111 /setup_mariadb.sh && /setup_mariadb.sh

CMD ["mysqld_safe"]
