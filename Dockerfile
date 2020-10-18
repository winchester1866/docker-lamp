FROM php:7.4-apache
RUN apt-get update
RUN apt-get install nano
RUN echo "ServerName localhost" >> /etc/apache2.conf
COPY site /var/www/html/
EXPOSE 80