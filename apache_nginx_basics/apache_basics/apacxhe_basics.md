
# Apache Basics


# show enabled modules
<pre>
apachectl -M -> shows Modules
</pre>

# Reloads apache if ther are no errors
<pre>
apache -k graceful -> restarts && reloads apache if no errors
</pre>

# Basic Host Settings
<pre>

< VirtualHost *:80>
    RewriteEngine on
    < Directory /var/www/>
            Options +Indexes FollowSymLinks
            AllowOverride None
            Require all granted
            Allow from all
    < /Directory >
< /VirtualHost>

</pre>

<pre>
Options +Indexes # enables directory listing
Options -Indexes # disables directory listing
FollowSymLinks # allow Symbolic links (Shortcuts to hide URL) Example -> URL shows: /system/files/images/test.png but file is under /pictures/test.png
AllowOverride ALL # allows .htacces file to override all apache configurations
Require all granted # no login needed
Require valid-user  # requires login to access (.htpasswd)
Allow from all  # no IP addresses blocked from accessing
</pre>




