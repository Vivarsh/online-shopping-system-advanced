FROM httpd
COPY . /usr/local/apache2/htdocs/
RUN rm -r /usr/local/apache/htdocs/index.html
