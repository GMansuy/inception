CREATE DATABASE IF NOT EXISTS `wordpress`;
CREATE USER IF NOT EXISTS 'gmansuy'@'localhost' IDENTIFIED BY '123';
GRANT ALL PRIVILEGES ON wordpress.* TO 'gmansuy'@'%' IDENTIFIED BY '123';
FLUSH PRIVILEGES;
