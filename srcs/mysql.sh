#! /bin/bash

service mysql start

mysql -u root -e "GRANT ALL ON *.* TO 'amoussai'@'localhost' IDENTIFIED BY '1234'; FLUSH PRIVILEGES;"

mysql -u root -e "CREATE DATABASE phpmyadmin;"