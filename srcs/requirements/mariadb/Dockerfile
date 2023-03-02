FROM debian:buster

RUN	apt-get update && apt-get -y install mariadb-server mariadb-client \
	&& rm -rf /var/lib/apt/lists/* \
	&& mkdir -p /var/run/mysqld \
	&& chown -R mysql:mysql /var/run/mysqld \
	&& chmod 777 /var/run/mysqld

EXPOSE 3306

COPY		./conf/mysqld.conf ~/my.cnf
COPY		./conf/mysqld.conf /etc/mysql/my.cnf
COPY		./conf/mysqld.conf /etc/my.cnf

COPY	./tools/create_database.sh /usr/local/bin/
RUN		chmod +x /usr/local/bin/create_database.sh
COPY	./conf/wordpress.sql /usr/local/bin/

ENTRYPOINT ["create_database.sh"]

CMD ["mysqld", "--bind-address=0.0.0.0"]
