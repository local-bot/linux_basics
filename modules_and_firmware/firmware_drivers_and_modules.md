

#  find hardware  
<pre>
lspci | grep -i network
lsusb | grep -i ethernet
</pre>

# find out required module
<pre>
lspci -vs 06:00
    06:00.0 Network controller: Broadcom Inc. and subsidiaries Device 43c3 (rev 04)
    Kernel driver in use: xxxx
    Kernel modules: brcmfmac
</pre>

# get module info and drivers path
<pre>
modinfo brcmfmac   
    filename:       /lib/modules/6.0.18-602.inttf.fc37.x86_64/kernel/drivers/net/wireless/broadcom/brcm80211/brcmfmac/brcmfmac.ko.xz
</pre>

# list all modules
<pre>
lsmod
</pre>

# loading modules
<pre>
modprobe -v brcmfmac
modprobe -v brcmfmac parameter_name=parameter_value # advanced stuff
</pre>
# unloading modules 
<pre>
modprobe -rv brcmfmac
</pre>

# list blacklisted modules
<pre>
rfkill
</pre>

# list diagnostic messages
<pre>
dmesg | grep brcmfmac
</pre>

