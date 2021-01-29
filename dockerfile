FROM php:apache
COPY . /var/www/html
RUN rm /var/www/html/index.html
