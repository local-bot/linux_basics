# Install FPM to use multiple php versions on apache2

## Install fpm
<pre>
apt-get install php7.2 php7.2-fpm php7.2-mysql libapache2-mod-php7.2 -y
</pre>

## Start fpm
<pre>
sudo systemctl start php7.2-fpm
sudo systemctl status php7.2-fpm
</pre>

# Enable apache modules
enable module so that your Apache2 service can work with multiple PHP versions
<pre>
a2enmod actions fcgid alias proxy_fcgi
</pre>


## Update apache2 host config
<pre>
<<!--- --->VirtualHost *:80>
     ServerName example.com
     DocumentRoot /var/www/example.com
     DirectoryIndex info.php  

     <<!--- --->Directory /var/www/example.com>
        Options Indexes FollowSymLinks MultiViews
        AllowOverride All
        Order allow,deny
        allow from all
     <<!--- --->/Directory>

    <<!--- --->FilesMatch \.php$>
      # For Apache version 2.4.10 and above, use SetHandler to run PHP as a fastCGI process server
      SetHandler "proxy:unix:/run/php/php7.2-fpm.sock|fcgi://localhost"
    <<!--- --->/FilesMatch>

     ErrorLog ${APACHE_LOG_DIR}/example.com_error.log
     CustomLog ${APACHE_LOG_DIR}/example.com_access.log combined
<<!--- --->/VirtualHost>
</pre>
