FROM nextcloud:apache

RUN apt-get update && apt-get install -y \
    vim \
    lsof \
    nmap \
    iputils-ping 

#RUN /usr/sbin/a2ensite default-ssl
RUN /usr/sbin/a2enmod ssl
RUN chown -R www-data:www-data /var/www/html/data
COPY ports.conf /etc/apache2

EXPOSE 9999
