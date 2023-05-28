# rename files with regexp

## list files:

<pre> 
for f in 20230328_0*; do echo $f ; done
</pre>

<pre>
20230328_094552.jpg
20230328_094553.jpg
20230328_094554.jpg
20230328_094555.jpg
20230328_094556.jpg
20230328_094557.jpg
20230328_094558.jpg
</pre>

## rename using regexp
<pre>
for f in 20230328_0*; do mv $f ${f#20230328_0*}; done
</pre>

<pre>
94552.jpg
94553.jpg
94554.jpg
94555.jpg
94556.jpg
94557.jpg
94558.jpg
</pre>

## make name 4 digits long with awk 

\$ ls -1
<pre>
02.txt
1234.txt
123.txt
1.txt
</pre>

make filename 4 digits long
<pre>
$ ls | awk '/^([0-9]+)\.txt$/ { printf("%s %04d.txt\n", $0, $1) }' | xargs -n2 mv -n
</pre>

\$ ls -1
<pre>
0001.txt
0002.txt
0123.txt
1234.txt
</pre>
