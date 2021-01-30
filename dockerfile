FROM mattrayner/lamp
RUN rm /var/www/html/index.php
COPY . /var/www/html
RUN mkdir /var/lib/mysql/database
CMD ["/run.sh"]
