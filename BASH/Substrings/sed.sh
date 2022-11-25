#! /bin/bash

# replace first match only 
sed "s/somethin_old/somethin_new/" filename

# replaces all matches -> /g
sed "s/somethin_old/somethin_new/g" filename

# saves changes to file -> -i
sed -i "s/somethin_old/somethin_new/"

# removes first staring staring with whitespaces -> \s
sed "s/^\s*//" filename

# delete empty lines -> /d
sed -r '/^\s*$/d' filename

# $ cat cake.txt
Christine likes chocolate cake.
Rich likes lemon cake.
Tim only likes yellow cake.
Samantha does not like cake.

# delete complete line (-d)
$ sed '/Christine/d' cake.txt
Rich likes lemon cake.
Tim only likes yellow cake.
Samantha does not like cake.

# change entire line of text
$ sed '4cI am a new line' cake.txt
Christine likes chocolate cake.
Rich likes lemon cake.
Tim only likes yellow cake.
I am a new line
