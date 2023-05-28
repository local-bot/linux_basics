# Switch between PHP Versions (only for apache)

## Install php version
<pre>
$ sudo add-apt-repository -y ppa:ondrej/php
$ sudo apt update
$ sudo apt install php5.6
</pre>

## enable php mod for apache
<pre>
$ sudo a2enmod php5.6
$ systemctl restart apache2
</pre>

## disable php mod for apache
<pre>
$ sudo a2dismode php7.2
$ systemctl restart apache2
</pre>

