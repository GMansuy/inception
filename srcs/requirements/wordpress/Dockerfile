FROM debian:buster

EXPOSE 9000

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install wget curl -y
RUN apt-get install -y mariadb-client php7.3 php-fpm php-mysql

RUN mkdir -p /var/www/html
RUN chmod 777 /var/www/html

RUN  wget http://wordpress.org/latest.tar.gz && tar -xzvf latest.tar.gz &&\
    rm latest.tar.gz && cp -rf /wordpress/* /var/www/html
RUN chown www-data:www-data -R /var/www/html/*

#RUN sed -i "s/listen = \/run\/php\/php7.3-fpm.sock/listen=wordpress:9000/g" /etc/php/7.3/fpm/pool.d/www.conf
#RUN sed -i "s/;clear_env/clear_env/g" /etc/php/7.3/fpm/pool.d/www.conf

COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d/
RUN mkdir /run/php/

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

COPY ./conf/wp.sh /
RUN chmod +x /wp.sh

CMD ["/wp.sh"]
