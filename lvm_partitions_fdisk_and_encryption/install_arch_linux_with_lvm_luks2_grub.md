# Installing Arch with LVM Luks2 and Grub2

# Make Partitions
## Create partitions and lvm
<pre>
fdisk /dev/sda

g # for new GPT partition table (erase and format all data)
n # for new partition
p # see changes before saving 
w # to save changes and exit
</pre>

## List of partitions and logical volumes
<pre>
/dev/sda1/ # /boot 
/dev/sda2/ # /boot/efi

/dev/sda3/ -> logical volume
    /vg_group/root # /
    /vg_group/home # /home
    /vg_group/SWAP # SWAP
</pre>

## Change partition types
<pre>
mkfs.ext4 /dev/sda1/ # EXT4
mkfs.fat -F 32 /dev/sda2/ # EFI Partition
# /dev/sda3/ stays unformatted
</pre>

## Encrypt and unlock encrypted partition
<pre>
cryptsetup luksFormat /dev/sda3
cryptsetup luksOpen /dev/sda3 encrypted_lvm # partition must be unlocked to be able to configure the lvm
</pre>

## Create PVS, VGS and LVS
Create VGS
<pre>
vgcreate vg_name /dev/mapper/encrypted_lvm
</pre>

Create logical volumes and and SWAP
<pre>
lvcreate -n lvm_root -L 10G vg_name
lvcreate -n lvm_home -L 20G vg_name
lvcreate -n lvm_SWAP -l 100%FREE -n SWAP vg_name
</pre>

Make file system of logical volumes
<pre>
mkfs.ext4 /dev/vg_name/root
mkfs.ext4 /dev/vg_name/home
mkswap /dev/vg_name/SWAP
</pre>

Map and use current vgs
<pre>
vgchange -ay # virtual groups are always mapped to /dev/vg_name/
</pre>


## Make SWAP and turn SWWAP on
<pre>
swapon /dev/vg_group/SWAP 
</pre>

# Mount partitions and logical volumes

## Create directories for mounting our partitions
<pre>
mdkir -p /mnt/boot/efi
mkdir /mnt/home
</pre>

## Mount unencrypted boot and efi partitions
<pre>
mount /dev/sda1 /mnt/boot
mount /dev/sda2 /mnt/boot/efi
</pre>

## Mount partitions of encrypted logical volumes
<pre>
mount /dev/vg_group/root /mnt # (/mnt = /)
mount /dev/vg_group/home /mnt/home # (/mnt/home = /home)
</pre>

# Install Arch 
## Install Arch to mounted volume
<pre>
pacstrap /mnt base base-devel linux linux-firmware lvm2 luks2
</pre>

## Generate fstab
<pre>
genfstab -U /mnt >> /mnt/etc/fstab
</pre>

## Chroot to new system
<pre>
arch-chroot /mnt
</pre>

## Make mkinitcpio 
<pre>
# edit /etc/mkinitcpio.conf 
HOOKS=(base udev autodetect modconf kms keyboard keymap consolefont block encrypt lvm2 filesystems fsck) #adds keymaps

# make mkinitcpio
mkinitcpio -p linux
</pre>

## Install grub
<pre>
# install grub
grub-install --target=x86_64-efi --efi-directory=/boot/efi 

# update grub config file
grub-mkconfig -o /boot/grub/grub.cfg

</pre>

## Configuring boot 
<pre>
# edit /etc/default/grub

# using UUID
GRUB_CMDLINE_LINUX="cryptdevice=UUID=<insert-UUID-here>:encrypted_lvm root=/dev/vg_group/root loglevel=3 quiet" 

# using device
GRUB_CMDLINE_LINUX="cryptdevice=/dev/sda3:encrypted_lvm root=/dev/vg_group/root loglevel=3 quiet"

# very imprtatn 
GRUB_ENABLE_CRYPTODISK=y

</pre>

## Update Grub and Reboot
<pre>
grub-mkconfig -o /boot/grub/grub.cfg && reboot
</pre>