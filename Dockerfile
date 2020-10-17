FROM ubuntu

RUN apt-get update
RUN apt-get install -y apache2
RUN apt-get install -y php

COPY ./simpleApp/index.php /var/www/html/index.php

CMD ["/usr/sbin/httpd","-D","FOREGROUND"]

EXPOSE 80