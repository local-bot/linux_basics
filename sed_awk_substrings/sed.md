# sed basics

## replace first match only 
~~~
sed "s/somethin_old/somethin_new/" filename
~~~

## replaces all matches -> /g
~~~
sed "s/somethin_old/somethin_new/g" filename
~~~

## saves changes to file -> -i
~~~
sed -i "s/somethin_old/somethin_new/"
~~~

## remove everything staring with whitespaces ^\s*
~~~
sed "s/^\s*//" filename
~~~

## delete everything starting and ending with whitespace ^\s*$
~~~
sed -r '/^\s*$/d' filename
~~~

## replacing specific lines of document
~~~
# replace whole line number 2
sed -i '2s/.*/replacement-line/' file.txt 

# replace whole line number 5
sed -i '5s/.*/replacement-line/' file.txt
~~~

## replace ip adress with regexp
~~~
sed -ri 's/([0-9]{1,3}).([0-9]{1,3}).([0-9]{1,3}).([0-9]{1,3})/replace_with_something/g' /var/log/apache2/access.log
~~~

## delete complete line matching Christine(-d)
~~~
cake.txt before sed:
Christine likes chocolate cake.
Rich likes lemon cake.
Tim only likes yellow cake.
Samantha does not like cake.

sed '/Christine/d' cake.txt

cake.txt after sed:
Rich likes lemon cake.
Tim only likes yellow cake.
Samantha does not like cake.
~~~

## replacing a complete line 
~~~
# replace fourth line of text

sed '4cI am a new line' cake.txt

Christine likes chocolate cake.
Rich likes lemon cake.
Tim only likes yellow cake.
I am a new line
~~~

