FROM httpd
COPY . /usr/local/apache2/htdocs/
RUN rm /usr/local/apache/htdocs/index.html
