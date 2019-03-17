FROM nginx:latest
MAINTAINER "duyuyang" <du.r.yuyang@gmail.com>

RUN apt-get update -y && \
    apt-get install php-fpm -y && \
    apt-get install supervisor -y

COPY cert/server-cert.pem /etc/nginx/ssl/public.pem
COPY private/server-key.pem /etc/nginx/ssl/private.key

COPY .htpasswd /etc/nginx/.htpasswd
COPY default.conf /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/nginx.conf

ADD site/ /usr/share/nginx/html/

COPY php-fpm.conf /etc/php/7.0/fpm/php-fpm.conf
COPY www.conf /etc/php/7.0/fpm/pool.d/www.conf

COPY supervisord.conf /etc/supervisord.conf

CMD ["/usr/bin/supervisord", "-n"]