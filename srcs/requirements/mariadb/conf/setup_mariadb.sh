service mysql start
mysql -e "CREATE DATABASE wordpress;"
mysql -e "CREATE USER 'gmansuy'@'localhost' IDENTIFIED BY '123';"
mysql -e "GRANT ALL PRIVILEGES ON wordpress.* TO 'gmansuy'@'localhost';"
mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '123';"
mysql -u root --password=123 -e "FLUSH PRIVILEGES;"
