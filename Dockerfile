FROM docker.io/library/debian

LABEL description="httpd imange"

MAINTAINER N24X

RUN \
apt update  && \
apt install -y apache2  &&\
apt clean &&  \
rm -rf /tmp/* /var/lib/apt/lists/* /var/tmp/* 
COPY index.html /var/www/html
EXPOSE 80

CMD ["systemctl" ,"start", "apache2"]
