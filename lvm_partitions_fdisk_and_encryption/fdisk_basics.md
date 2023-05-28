# fdisk basics

## Open fdisk and select disk
<pre>
fdisk /dev/sda
</pre>
## Format disk and create partition table
Do this if GPT partition table not already initialized # mostly only just for new disks
<pre>
g # Enter "g" to create a new GPT partition table (this will format disk and erase all information)
</pre>

## Creating new partitions
fdisk /dev/sda
<pre>
Command (m for help): n # Enter "n" to creaete new partition. 
Command action
   e   extended
   p   primary partition (1-4)
p # select for partition
Partition number (1-4): 1 # select or press Enter
First cylinder (1-621, default 1): # press Enter
Using default value 1
Last cylinder or +size or +sizeM or +sizeK (1-621, default 621): +10G # select size (+1M +1G)
</pre>

## change partition type (optional)
<pre>
Command (m for help): t # Enter "t" to change partition types 
Partition number (1-4): 1 # select the partition you want
Hex code (type L to list codes): 82 # or L for more options (root, home, EFI, ext4)
Changed system type of partition 2 to 82 (Linux swap)      
Command (m for help): p
</pre>

## print end result before saving changes
<pre>
Command (m for help): p 
Disk /dev/hdb: 64 heads, 63 sectors, 621 cylinders
Units = cylinders of 4032 * 512 bytes
 
   Device Boot    Start       End    Blocks   Id  System
/dev/hdb1   *         1       196    395104+  83  Linux
/dev/hdb2           197       262    133056   82  Linux swap
/dev/hdb3           263       458    395136   83  Linux
/dev/hdb4           459       621    328608   83  Linux     

Command (m for help): w
</pre>