FROM mattrayner/lamp
RUN rm /var/www/html/index.php
COPY . /var/www/html
COPY database/onlineshop.sql /
RUN service mysql start
RUN mysql -uroot default < /onlineshop.sql
CMD ["/run.sh"]
