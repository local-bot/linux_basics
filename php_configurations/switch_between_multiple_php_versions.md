# Switch between PHP Versions

# via apt
Install
<pre>
$ sudo add-apt-repository -y ppa:ondrej/php
$ sudo apt update
$ sudo apt install php5.6
</pre>

Switch from PHP 7.x to PHP 5.x
<pre>
$ sudo a2dismod php7.2
$ systemctl restart apache2
$ sudo a2enmod php5.6
</pre>

# via update-alternatives
Set PHP 5.6 as default version using command:
<pre>
$ sudo update-alternatives --set php /usr/bin/php5.6
$ sudo update-alternatives --config php
$ systemctl restart apache2
</pre>

change main PHP to a specific version 
<pre>
update-alternatives --install /usr/bin/php php /opt/plesk/php/7.3/bin/php 1 # optional
update-alternatives --install /usr/bin/php php /opt/plesk/php/7.4/bin/php 2 # 
</pre>

list all php alternatives and select default php version
<pre>
update-alternatives --config php
</pre>

# via phpenv 
https://github.com/phpenv/phpenv/blob/master/README.md