FROM httpd:2.4
MAINTAINER "duyuyang" <du.r.yuyang@gmail.com>


COPY cert/server-cert.pem /usr/local/apache2/conf/server-cert.pem
COPY private/server-key.pem /usr/local/apache2/conf/server-key.pem

COPY httpd.conf /usr/local/apache2/conf/httpd.conf
COPY httpd-vhosts.conf /usr/local/apache2/conf/extra/httpd-vhosts.conf
COPY httpd-ssl.conf /usr/local/apache2/conf/extra/httpd-ssl.conf


