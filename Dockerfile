FROM httpd:latest

COPY httpd.conf /usr/local/apache2/conf/httpd.conf
COPY httpd-ssl.conf /usr/local/apache2/conf/extra/httpd-ssl.conf

RUN mkdir -p /usr/local/apache2/certs

COPY certs/nle.local.styla.eu.pem /usr/local/apache2/certs/nle.local.styla.eu.pem
COPY certs/nle.local.styla.eu.key.pem /usr/local/apache2/certs/nle.local.styla.eu.key.pem
