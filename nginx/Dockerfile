FROM nginx:latest
MAINTAINER "duyuyang" <du.r.yuyang@gmail.com>

COPY cert/server-cert.pem /etc/nginx/ssl/public.pem
COPY private/server-key.pem /etc/nginx/ssl/private.key

COPY .htpasswd /etc/nginx/.htpasswd
COPY default.conf /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/nginx.conf