service mysql start
mysql -u root
CREATE DATABASE wordpress;
CREATE USER 'gmansuy'@'localhost' IDENTIFIED BY '123';
GRANT ALL PRIVILEGES ON wordpress.* TO 'gmansuy'@'localhost';
FLUSH PRIVILEGES;
