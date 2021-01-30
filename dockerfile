FROM mattrayner/lamp
RUN rm /var/www/html/index.php
COPY . /var/www/html
RUN mysql -uroot
CMD ["/run.sh"]
