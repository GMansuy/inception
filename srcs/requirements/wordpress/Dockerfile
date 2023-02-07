FROM debian:buster

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install wget -y
RUN apt-get install -y apache2 mariadb-client php7.3 php-fpm php-mysql
RUN wget https://fr.wordpress.org/wordpress-6.0-fr_FR.tar.gz -P /var/www
RUN cd /var/www && tar -xzf /var/www/wordpress-6.0-fr_FR.tar.gz && rm /var/www/wordpress-6.0-fr_FR.tar.gz
RUN chown -R root:root /var/www/wordpress

RUN sed -i "s/listen = \/run\/php\/php7.3-fpm.sock/listen=wordpress:9000/g" /etc/php/7.3/fpm/pool.d/www.conf
RUN sed -i "s/;clear_env/clear_env/g" /etc/php/7.3/fpm/pool.d/www.conf
