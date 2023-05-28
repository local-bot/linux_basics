
# dpkg
<pre>
+ can do basic stuff
- wont tinstall dependencies 
</pre>

# shows all installed
<pre>
dpkg -l
</pre>

# show all files belonging to a package
<pre>
dpkg -L <Package>
</pre>

# show package status
<pre>
sudo dpkg -s <Package>
</pre>

# show all directories belonging to a specific package
<pre>
dpkg -c <Pakage-Name>.deb
</pre>

# exclude packages 
<pre>
echo "package-name hold" | sudo dpkg --set-selections
sudo aptitude hold package-name
</pre>

# undo exclude
<pre>
echo "package-name install" | sudo dpkg --set-selections
aptitude hold package-name
</pre>




