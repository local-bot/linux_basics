# awk basics

cat test.txt
<pre>
Windows_8 is Garbage
Windows_10 is ok
Debian me gusta
Ubuntu plz remove snap
Pop-os doesnt use grub :(
</pre>

# using awk
awk '{print "first column: " $1 "\t\t third column: " $3}' test.txt
<pre>
first column: Windows_8     third column: Garbage
first column: Windows_10    third column: ok
first column: Debian        third column: gusta
first column: Ubuntu        third column: remove
first column: Pop-os        third column: use
</pre>