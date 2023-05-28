
# apt and aptitude 

apt
<pre>
+ can Download Packages 
+ can installs dependencies 
</pre>

aptitude
<pre>
gives apt roids
</pre>


# Useful Commands 
list all available programs from all available repos (CDROM, online repos ...)
<pre>
apt list
</pre>

list installed
<pre>
apt list --installed
apt list | grep <Package>
</pre>

search packages with apt
<pre>
apt-cache search <Package>
</pre>

exclude packages from updating
<pre>
apt-mark hold package-name
</pre>

undo exclude
<pre>
apt-mark unhold package-name
</pre>

