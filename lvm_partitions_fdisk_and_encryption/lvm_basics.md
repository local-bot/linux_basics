
# Logical Volume Manager Basics

## Components of Logical Volmes
physical volumnes # the actual physical discs or partitions you want to use on your volume group \
volume groups # a virtual groups are composed by one or more physical volumes or partitions \
logical volumes # the partitions you want to use inside a locgical volme group

## Create new unformatted partition # must be unformatted for lvm
<pre>
fdisk /dev/sda
g # for new GPT partition table (erase and format all data)
n # for new partition
p # see changes before saving 
w # to save changes and exit
</pre>

## Encrypt LVM (optional)
Encrypt the unformated partition
<pre>
cryptsetup luksFormat /dev/sda1 # encrypt the new created partition 
</pre>

## Unlock partition and name the unlocked partition 
system always maps unlockeed partitions to /dev/mapper/whatever_name_you_give_it
<pre>
cryptsetup luksOpen /dev/sda1 name_of_unlocked_partition # partition must be unlocked to be able to configure the lvm
</pre>

## Creating physical volume
Can be a disk or a partition
<pre>
pvcreate /dev/mapper/name_of_unlocked_partition # unlocked encrypted partitons are always mapped to /dev/mapper/name_of_unlocked
pvcreate /dev/sda # for no encryption
pvcreate /dev/sda /dev/sdb # creates multiplte pvs at once
</pre>

## Creating virtual group (An Array of disks or partitions to make bigger and editable partitions)
can be made by one or more physical volumes or partitions 
<pre>
vgcreate vg_name /dev/mapper/name_of_unlocked_partition # adding encrypted pvs
vgcreate vg_name /dev/sda /dev/sdb /dev/sdc1 /dev/sdc2 # example adding multiplle pvs
</pre>

# Extending virtualgroups by adding additional physical volumes to increase their capacity
Create PVS first to extend virtual groups 
<pre>
vgextend vg_name /dev/sdd # adding one pvs (whole disk)
vgextend vg_name /dev/sda /dev/sdb /dev/sdc1 /dev/sdc2 # adding multiple pvs (whole disks and some partitions)
</pre>

# creating logical volumes
<pre>
lvcreate -n lvm_root -L 10G vg_name
lvcreate -n lvm_home -L 20G vg_name
lvcreate -n lvm_SWAP -l 100%FREE -n SWAP vg_name
</pre>

# map and use current vgs
<pre>
vgchange -ay # virtual groups are always mapped to /dev/vg_name/
</pre>

# list group and volumes
<pre>
pvs # shows phisical volumnes
vgs # shows volume groups 
lvs # shows logical volumes 
</pre>

# make file system and swap for LVM
<pre>
mkfs.ext4 /dev/vg_name/root
mkfs.ext4 /dev/vg_name/home
mkswap /dev/vg_name/SWAP
swapon /dev/vg_name/SWAP
</pre>

# extend or reduce logical volumes
<pre>
lvreduce -L -2.5G -r /dev/vg_name/lvm_home
lvextend -l +100%FREE -r /dev/vg_name/lvm_root
</pre>