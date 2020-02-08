#! /bin/bash

rm /etc/nginx/sites-enabled/default

mkdir /etc/nginx/ssl

chmod 700 /etc/nginx/ssl

openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl/server.key -out /etc/nginx/ssl/server.crt  -subj "/C=$COUNTRY/ST=$STATE/L=$LOCALITY/O=$ORGANIZATION/CN=$SERVERNAME"

cp /volume/default.conf /etc/nginx/conf.d/

service nginx start

service php7.3-fpm start 
