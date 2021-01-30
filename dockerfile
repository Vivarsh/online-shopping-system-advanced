FROM mattrayner/lamp
RUN rm /var/www/html/index.php
COPY . /var/www/html
RUN echo 'docker exec -i webapp bash mysql -uroot "create database onlineshop"'
CMD ["/run.sh"]
