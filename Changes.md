# Config Apache httpd for HTTPS

## httpd.conf

Enable SSL by uncommenting line 159 in httpd.conf:

```
LoadModule ssl_module libexec/apache2/mod_ssl.so
```

replace line 238 in httpd.conf to suppress messages about the server’s fully qualified domain name

```
ServerName localhost
```

uncomment line 188 and line 521 to enable Virtual Hosts.

```
LoadModule vhost_alias_module libexec/apache2/mod_vhost_alias.so

Include conf/extra/httpd-vhosts.conf
```

Uncomment line 538 to include httpd-ssl.conf (to listen on port 443):

```
Include conf/extra/httpd-ssl.conf
```

Optionally, uncomment enable PHP

```
LoadModule php5_module libexec/apache2/libphp5.so
```

uncomment mod_socache_shmcb

```
LoadModule socache_shmcb_module modules/mod_socache_shmcb.so
```

## virtualhost httpd-vhosts.conf

```
<VirtualHost *:80>
    ServerAdmin webmaster@localhost
    DocumentRoot "/usr/local/apache2/htdocs"
    ServerName localhost
    ServerAlias localhost
    ErrorLog "logs/localhost-error_log"
    CustomLog "logs/localhost-access_log" common
    <Directory "/usr/local/apache2/htdocs">
        Options Indexes FollowSymLinks
        AllowOverride All
        Order allow,deny
        Allow from all
        Require all granted
    </Directory>
</VirtualHost>
```