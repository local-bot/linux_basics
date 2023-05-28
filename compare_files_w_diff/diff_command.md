# diff command

diff [option] file1 file2

https://phoenixnap.com/kb/linux-diff

sudo nano example1.txt

<pre>
Apple
Orange
Banana
Watermelon
Chery
</pre>

sudo nano example2.txt

<pre>
Orange
Peach
Apple
Banana
Melon
Cherry
</pre>

diff example1.txt example2.txt 

<pre>
1d0
< Apple
2a2,3
> Peach, > Apple 
4c5
< Watermelon
---
> Melon
</pre>

<pre>
1d0 – The first line (1) from the first file should be deleted (d). If not, it would appear in line 0 in the second file.
< Apple –The content you need to delete (as referred to with 1d0).
2a2,3 – In line 2 of the first file, you should add (a) lines 2 and 3 (2,3) from the second file.
> Peach, > Apple –  The content you need to add (as referred to with 2a2,3).
4c5 –  The fourth line (4) from the first file should be changed (c) to the fifth line (5) from the second file.
< Watermelon – The content you need to change.
> Melon – What you need to change it to.
</pre>