#! /bin/bash

wget https://files.phpmyadmin.net/phpMyAdmin/4.9.2/phpMyAdmin-4.9.2-all-languages.tar.gz

mkdir /var/www/html/phpmyadmin

tar xzf phpMyAdmin-4.9.2-all-languages.tar.gz --strip-components=1 -C /var/www/html/phpmyadmin

cp /volume/config.inc.php /var/www/html/phpmyadmin/

mysql < /volume/phpmyadmin.sql -u root

chmod 660 /var/www/html/phpmyadmin/config.inc.php

chown -R www-data:www-data /var/www/html/phpmyadmin

service nginx restart
