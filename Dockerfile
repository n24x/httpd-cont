FROM docker.io/library/debian

LABEL description="httpd imange"

MAINTAINER N24X

RUN \
apt update  && \
apt install -y apache2  &&\
apt clean &&  \
rm -rf /tmp/* /var/lib/apt/lists/* /var/tmp/* && \
echo "ServerName localhost" >> /etc/apache2/apache2.conf

COPY index.html /var/www/html
EXPOSE 80

CMD ["/usr/sbin/apache2ctl","-D","FOREGROUND"]
