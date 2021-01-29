FROM httpd
ADD . /var/www/html
RUN rm /var/html/index.html
CMD apachectl -D FOREGROUND
