
# dpkg
+can do basic stuff

-wont tinstall dependencies 

# shows all installed
dpkg -l

# show all files belonging to a package
dpkg -L <Package>

# show package status
sudo dpkg -s <Package>

# show all directories belonging to a specific package
dpkg -c <Pakage-Name>.deb

# exclude packages 
echo "package-name hold" | sudo dpkg --set-selections
sudo aptitude hold package-name

# undo exclude
echo "package-name install" | sudo dpkg --set-selections
aptitude hold package-name





