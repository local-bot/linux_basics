
# apt
+ +can Download Packages 
+ +can installs dependencies

# list all ürpgrams from all available repos (CDROM , online repos ...)
apt list

# list installed
apt list --installed
apt list | grep <Package>

# search packages with apt
apt-cache search <Package>

# exclude packages from updating
apt-mark hold package-name

# undo exclude
apt-mark unhold package-name

# aptitude 
apt on roids