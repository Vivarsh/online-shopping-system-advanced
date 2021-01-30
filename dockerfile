FROM mattrayner/lamp
RUN rm /var/www/html/index.php
COPY . /var/www/html
COPY database/onlineshop.sql /
CMD ["/start-mysqld.sh"]
RUN service mysql restart && echo 'CREATE DATABASE test;' | mysql -uroot test < /onlineshop.sql
CMD ["/run.sh"]
