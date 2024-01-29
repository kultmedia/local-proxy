FROM httpd:latest

COPY httpd.conf /usr/local/apache2/conf/httpd.conf
COPY httpd-ssl.conf /usr/local/apache2/conf/extra/httpd-ssl.conf

RUN mkdir -p /usr/local/apache2/certs

COPY certs/nle.local.styla.dev.pem /usr/local/apache2/certs/nle.local.styla.dev.pem
COPY certs/nle.local.styla.dev.key.pem /usr/local/apache2/certs/nle.local.styla.dev.key.pem
