
# occ command
Must be in /var/www/nextcloud/

Syntax
<pre>
sudo -u www-data php occ -h
</pre>

Upgrade Nextcloud via cli
<pre>
./occ upgrade
</pre>

List options
<pre>
sudo -u www-data php occ
</pre>

<pre>
cd /var/www/nextcloud
</pre>

# list all nextcloud users
<pre>
sudo -u www-data php occ user:list
</pre>

# change password
<pre>
sudo -u www-data php /var/www/nextcloud/occ user:resetpassword user_name
</pre>

# nextcloud applications
<pre>
# list applications
sudo -u www-data php occ app:list

# install an application
sudo -u www-data php occ app:install twofactor_totp

# disable applications
sudo -u www-data php occ app:disable files_external
</pre>
