# Nginx setup

## Goal

Set up nginx to serve web content via self-signed certificate.

Serve static content from /usr/share/nginx/html

Serve PHP dynamic content from https://127.0.0.1:9000

## Download the default config from the nginx:latest container

docker cp <container-id>:/etc/nginx/nginx.conf .

docker cp <container-id>:/etc/nginx/conf.d/default.conf .

## Generating a password file for admin page

apt install httpd-tools

htpasswd -c /etc/nginx/.htpasswd admin
> password