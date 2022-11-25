
# grub2

# start grub
press e for edit

# modify line starting with linux
change ro to rw and add init=/bin/bash at the end of the line

# save and exit
Ctrl + X or F10 

# chroot and change password
chroot /sysroot
passwd root