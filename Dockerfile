FROM httpd:latest

ENV CUSTOM_PORT=7008
ENV CUSTOM_DOMAIN=local.kultmedia.com

COPY httpd.conf /usr/local/apache2/conf/httpd.conf
COPY httpd-ssl.conf /usr/local/apache2/conf/extra/httpd-ssl.conf

RUN mkdir -p /usr/local/apache2/certs

ADD certs /usr/local/apache2/certs

