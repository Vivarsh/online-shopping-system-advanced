FROM mattrayner/lamp
RUN rm /var/www/html/index.php
COPY . /var/www/html
COPY database/onlineshop.sql /
CMD ["/start-mysqld.sh"]
CMD ["mysql -u root 'create database test']
CMD ["mysql -u root test < /onlineshop.sql"]
CMD ["/run.sh"]
