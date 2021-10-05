FROM php:7.4.1-apache-buster

RUN apt-get update && apt-get install apt-file -y && apt-file update && apt-get install vim wget libzip-dev zip -y

RUN docker-php-ext-install mysqli pdo pdo_mysql zip && docker-php-ext-enable pdo_mysql && a2enmod rewrite

COPY docker-php-apache-mysql-start /usr/local/bin/

CMD ["docker-php-apache-mysql-start"]
