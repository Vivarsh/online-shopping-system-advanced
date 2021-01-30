FROM mattrayner/lamp
RUN rm /var/www/html/index.php
COPY . /var/www/html
COPY database/onlineshop.sql /var/lib/mysql
RUN mkdir -p /var/run/mysqld
RUN chown mysql:mysql /var/run/mysqld
RUN /start-mysqld.sh
RUN mysql -u root -e "create database test"
RUN mysql -u root test < /var/lib/mysql/onlineshop.sql
CMD ["/run.sh"]
