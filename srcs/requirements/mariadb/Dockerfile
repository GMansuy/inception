FROM debian:buster

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install mariadb-server -y

COPY conf/50-server.cnf	/etc/mysql/mariadb.conf.d/50-server.cnf

# MODIFIER CETTE PARTIE
COPY conf/db.sh /
RUN chmod +x /db.sh && /db.sh