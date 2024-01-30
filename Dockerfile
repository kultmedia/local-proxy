FROM httpd:latest

COPY httpd.conf /usr/local/apache2/conf/httpd.conf
COPY httpd-ssl.conf /usr/local/apache2/conf/extra/httpd-ssl.conf

RUN mkdir -p /usr/local/apache2/certs

COPY certs/local.kultmedia.com.pem /usr/local/apache2/certs/local.kultmedia.com.pem
COPY certs/local.kultmedia.com.key.pem /usr/local/apache2/certs/local.kultmedia.com.key.pem
