FROM ubuntu:16.04

MAINTAINER Mitesh "mitesh.jaiswal@globant.com"

RUN \
  apt-get update && \
  apt-get install -y nginx && \
  rm -rf /var/lib/apt/lists/* && \
  echo "\ndaemon off;" >> /etc/nginx/nginx.conf && \
  chown -R www-data:www-data /var/lib/nginx

WORKDIR /var/www/html/
ADD . /var/www/html/ 

CMD ["nginx"]

EXPOSE 80 443


