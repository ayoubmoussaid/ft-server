FROM debian:buster

LABEL maintainer="amoussai" 

ENV SERVERNAME 10.12.10.2

ENV COUNTRY MA
ENV STATE Khouribga
ENV LOCALITY Khouribga
ENV ORGANIZATION 1337FIL

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get -y install wget lsb-release procps
RUN apt install mariadb-server mariadb-client nginx php-fpm php-mysql -y
RUN apt install php-curl php-gd php-intl php-mbstring php-soap php-xml php-xmlrpc php-zip php-pear php-gettext php-cgi -y

ADD ./srcs/script.sh /usr/bin/script.sh
ADD ./srcs/phpmyadmin.sh /usr/bin/phpmyadmin.sh
ADD ./srcs/mysql.sh /usr/bin/mysql.sh
ADD ./srcs/nginx.sh /usr/bin/nginx.sh
ADD ./srcs/wordpress.sh /usr/bin/wordpress.sh 
ADD ./srcs/listener.sh /usr/bin/listener.sh 

RUN chmod 755 /usr/bin/script.sh
RUN chmod 755 /usr/bin/mysql.sh
RUN chmod 755 /usr/bin/nginx.sh
RUN chmod 755 /usr/bin/phpmyadmin.sh
RUN chmod 755 /usr/bin/wordpress.sh
RUN chmod 755 /usr/bin/listener.sh
RUN mkdir /volume

COPY ./srcs/volume /volume

RUN script.sh

EXPOSE 80 443

CMD [ "listener.sh" ]
