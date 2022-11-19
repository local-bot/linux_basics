#! /bin/bash

# regular expressions 

# replace first match only 
sed "s/somethin_old/somethin_new/" filename

# replaces all matches -> /g
sed "s/somethin_old/somethin_new/g" filename

# saves changes to file
sed -i "s/somethin_old/somethin_new/"

# removes first staring staring with whitespaces  
sed "s/^\s*//" filename