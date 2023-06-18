
# dpkg
<pre>
+ can do basic stuff
- wont tinstall dependencies 
</pre>

# Shows all installed
<pre>
dpkg -l
</pre>

# Show all files belonging to a package
<pre>
dpkg -L <Package>
</pre>

# Show package status
Get even more info with dpkg -s package_name

~~~
dpkg -s postfix

Package: postfix
Status: install ok installed
Priority: optional
Section: mail

More stuff...

Config files:
 /etc/init.d/postfix 2ba00a4eea441b7b72d2f9bf96816ea9
 /etc/insserv.conf.d/postfix 7fe2d086ff4822fc9fe13adab1090dce
 /etc/network/if-down.d/postfix 476028824e6fefb251ded3df27a420b3
 /etc/network/if-up.d/postfix b13787e06b1451656034a14f0e16ce2c
 /etc/postfix/post-install 64594bceb8f4a504f35ce5704ce7c1e6
 /etc/postfix/postfix-files 2d1068960ddf2cc82a6fbe26dec98e6f
 /etc/postfix/postfix-script a8849b07931ce083a4b6d293568a3267
 /etc/ppp/ip-down.d/postfix 476028824e6fefb251ded3df27a420b3
 /etc/ppp/ip-up.d/postfix b13787e06b1451656034a14f0e16ce2c
 /etc/resolvconf/update-libc.d/postfix 0eb42cb5df572c0af15ea8d29340d107
 /etc/rsyslog.d/postfix.conf d8a09827fff2a22311e4dd4a83e95c83
 /etc/ufw/applications.d/postfix 5c7e746dc9255e750b8f50460de11a32
...
~~~

# show all directories belonging to a specific package
dpkg -c some_dpkg_file.deb

~~~
dpkg -c mysql-apt-config_0.8.25-1_all.deb

drwxr-xr-x root/root         0 2023-03-30 17:56 ./
drwxr-xr-x root/root         0 2023-03-30 17:56 ./usr/
drwxr-xr-x root/root         0 2023-03-30 17:56 ./usr/share/
drwxr-xr-x root/root         0 2023-03-30 17:56 ./usr/share/doc/
drwxr-xr-x root/root         0 2023-03-30 17:56 ./usr/share/doc/mysql-apt-config/
-rw-r--r-- root/root      6835 2023-03-30 17:56 ./usr/share/doc/mysql-apt-config/COPYING.gz
-rw-r--r-- root/root      2488 2023-03-30 17:56 ./usr/share/doc/mysql-apt-config/README
-rw-r--r-- root/root      2506 2023-03-30 17:56 ./usr/share/doc/mysql-apt-config/changelog.Debian.gz
-rw-r--r-- root/root      1945 2023-03-30 17:56 ./usr/share/doc/mysql-apt-config/copyright
~~~

# exclude packages 
<pre>
echo "some_package_name hold" | sudo dpkg --set-selections
sudo aptitude hold some_package_name
</pre>

# undo exclude
<pre>
echo "some_package_name install" | sudo dpkg --set-selections
aptitude hold some_package_name
</pre>




