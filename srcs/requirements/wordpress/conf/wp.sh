#!/bin/bash

#wp core download --allow-root
#wp core config --dbname="wordpress" --dbuser="gmansuy" --dbpass="123" --dbhost="mariadb":"3306" --dbprefix='wp_' --allow-root
#wp core install --url="localhost" --title="gmansuy inception website" --admin_user="gmansuy" --admin_password="123" --admin_email="gmansuy@student.42.fr" --allow-root
#wp user create default "default"@randomuser.com --role='subscriber' --user_pass="123" --allow-root
#wp option update comment_registration 1 --allow-root
exec /usr/sbin/php-fpm7.3 -F
