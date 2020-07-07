FROM ubuntu:16.04
MAINTAINER MercyL1n
ENV LANG C.UTF-8
ADD sources.list /etc/apt/
RUN apt-get clean
RUN apt-get update -y --fix-missing
ENV DEBIAN_FRONTEND Interactive
RUN apt-get -yqq install apache2
RUN echo 'ServerName localhost:80'>>/etc/apache2/apache2.conf
RUN apt-get install php7.0-fpm libapache2-mod-php7.0 -yqq
ADD html.tar /var/www/
RUN rm -f /var/www/html/index.html
RUN chown root:root /var/www/html/index.php
COPY start.sh /root/start.sh
RUN chmod a+x /root/start.sh
CMD ["/root/start.sh"]
EXPOSE 80
