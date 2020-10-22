FROM ubuntu:16.04
RUN apt update && apt install apache2
COPY index.html /var/www/html
CMD apachectl -DFOREGROUND
