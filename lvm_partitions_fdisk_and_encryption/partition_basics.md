# Partiiton basics

## Partition Types
<pre>
EXT4 for file systems
FAT32 for EFI # always at /boot/efi
SWAP for SWAP
</pre>

## Cretae new partitions
fdisk /dev/sda
<pre>
g # for new GPT partition table (erase and format all data)
n # for new partition
p # see changes before saving 
w # to save changes and exit
</pre>

Example new partitions:
<pre>
/
/home
/boot/efi
SWAP
</pre>

## changing partition types
<pre>
mkfs.ext4 /dev/sda1/ # root partition (/)
mkfs.ext4 /dev/sda2/ # home partition (/home)
mkfs.fat -F 32 /dev/sda3/ # EFI Partition
mkswap /dev/sda4/ # SWAP
</pre>