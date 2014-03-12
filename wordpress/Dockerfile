FROM ubuntu:precise

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive; apt-get install -y -q \
    wget \ 
    nginx \
    mysql-server \
    php5-fpm \
    php5-mysql \
    supervisor \
    pwgen unzip
RUN mkdir -p /var/run/sshd
RUN mkdir -p /var/log/supervisor

ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf
ADD nginx-wordpress.conf /etc/nginx/sites-available/default

RUN mkdir -p /var/www

RUN wget -nv 'http://wordpress.org/wordpress-3.8.1.zip' -O /var/www/wordpress.zip
RUN cd /var/www && unzip -q wordpress.zip && rm wordpress.zip && chown www-data:www-data -R wordpress

EXPOSE 80
ADD start.sh /start
RUN chmod +x /start
CMD ["/bin/bash", "/start"]
