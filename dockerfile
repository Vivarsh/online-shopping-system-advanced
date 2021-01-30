FROM mattrayner/lamp
RUN rm /var/www/html/index.php
COPY . /var/www/html
COPY database/onlineshop.sql /
CMD ["/start-mysqld.sh"]
CMD ["/run.sh"]
