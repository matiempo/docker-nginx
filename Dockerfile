FROM ubuntu
LABEL maitainer="mark.tiempo@telna.com"

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
  && apt-get install -y nginx \
  && apt-get install -y php-fpm \
  && rm -rf /var/www/html/index.nginx-debian.html

COPY index.php /var/www/html/index.php
COPY site.conf /etc/nginx/sites-available/default

cmd service php7.4-fpm start && \
    service nginx start && \
    tail -F /var/log/nginx/error.log
