FROM mattrayner/lamp
COPY . /var/www/html
RUN rm /var/www/html/index.html
CMD ["/run.sh"]
