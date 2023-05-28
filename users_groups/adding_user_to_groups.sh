# usermod


# adding user to group (requires reboot or re log in to take effect)
usermod -aG groupname username

# adding user to multiple groups 
usermod -aG group1,group2,group3 username

# change user primary group
usermod -f groupname username

# adding group and making it the primary group of user
usermod -g groupname username

# view all groups in system
getent group
cat /etc/group

# view current aktive groups on a user
id -Gn

# view groups of user
groups $USER
groups another_user
