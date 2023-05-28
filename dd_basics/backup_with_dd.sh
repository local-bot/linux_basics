#! /bin/bash

# Creating a Disk Image
You can create an image of a disk or a file image. 
Backing up a disk to an image will be faster than copying the exact data. 
Also, disk image makes the restoration much easier

sudo dd if=/dev/sda | gzip -c >/tmp/vdadisk.img.gz

# Restoring a Drive

sudo dd if=/tmp/sdadisk.img of=/dev/sda

gunzip -c /path/to/your-backup.img.gz | dd of=/dev/sdX

# Backup entire disk to disk

sudo dd if=/dev/sda of=/dev/sdb bs=4096 conv=noerror,sync
