FROM mattrayner/lamp
RUN rm /var/www/html/index.php
COPY . /var/www/html
COPY database /var/lib/mysql/database
CMD ["/run.sh"]
