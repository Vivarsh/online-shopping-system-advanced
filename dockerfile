FROM mattrayner/lamp
RUN rm /var/www/html/index.php
COPY . /var/www/html
COPY database/onlineshop.sql /var/lib/mysql
CMD ["/start-mysqld.sh"]
RUN mysql -u root
CMD ["/run.sh"]
