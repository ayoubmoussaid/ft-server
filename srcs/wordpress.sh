#! /bin/bash

mysql -u root -e "create database wordy ;GRANT ALL ON *.* TO 'amoussai'@'localhost' IDENTIFIED BY '1234'; FLUSH PRIVILEGES;"

cp /volume/press /etc/nginx/sites-available/

ln -s /etc/nginx/sites-available/press /etc/nginx/sites-enabled/

service nginx reload

wget https://wordpress.org/latest.tar.gz -P /tmp

mkdir /var/www/html/press

tar xzf /tmp/latest.tar.gz --strip-components=1 -C /var/www/html/press

cat /volume/wp-config1.php > /volume/wp-config.php

wget https://api.wordpress.org/secret-key/1.1/salt/ 

cat index.htm* >> /volume/wp-config.php

cat /volume/wp-config2.php >> /volume/wp-config.php

cp /volume/wp-config.php /var/www/html/press/

chown -R www-data:www-data /var/www/html/press
