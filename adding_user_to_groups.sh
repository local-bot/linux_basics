# usermod


# adding user to group (requires reboot or re log in to take effect)
usermod -aG groupname username

# adding user to multiple groups 
usermod -a -G group1,group2,group3 username

# change user primary group
usermod -g groupname username

# view all groups in system
getent group

# view current aktive groups on a user
id -Gn

# view groups of user
groups || id
