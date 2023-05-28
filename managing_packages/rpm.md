# rpm Basics

## Getting Infos

Verify All Installed Packages
<pre>
rpm -Va
rpm -qa
</pre>

Verifiy dependencies of a package file
<pre>
rpm -qpR <Package>
</pre>

Display Infos of a specific package file
<pre>
rpm -Vp /mnt/cdrom/RedHat/RPMS/i386/<Package>
</pre>

## Installation 

Install package file
<pre>
rpm -ivh <Package>
</pre>

Install package file without checking dependencies (--nodeps)
<pre>
rpm -ivh --nodeps <Package>
</pre>

## Update
Uopdate installed package
<pre>
rpm -Uvh <Package>
</pre>
