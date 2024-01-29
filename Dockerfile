FROM httpd:latest

# Copy your custom httpd.conf file to the image
COPY httpd.conf /usr/local/apache2/conf/httpd.conf