FROM ubuntu:16.04
RUN apt update && apt install apache2 -y
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
COPY index.html /var/www/html
EXPOSE 80
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
