FROM php:5.6-apache

# Base Dockerfile for PHP with pdo mysql extenstions for PHP set
MAINTAINER SEED Digital, hello@seeddigital.co

#Enable a2enmod rewrite
RUN a2enmod rewrite php5

#Configure the mysqli such that it is enabled
#According to the php-apache scheme
#It took a long time to figure out how they did it
#Cuz they used different file systems!!!!!!

RUN docker-php-ext-install pdo pdo_mysql mysql

COPY ./seed-defaults.ini /usr/local/etc/php/conf.d/
