
#!/bin/bash

# for examples

# with ls
for i in $( ls ); do
    echo item: $i
done

for file in *.jpeg; do mv -- "$file" "${file%.jpeg}.jpg"; done

# with array
array=(Hello World)
for i in "${array[@]}"; do  echo $i ; done

# while examples       
i=1
while [ $i -le 10 ]
do
echo $i
((i++))
done

# while with ls
while read line; do echo $line; done < example.txt

ls | grep *.txt | while read line; do echo $line; done

# if examples

if [ -z $EDITOR ]
then
EDITOR="nano"
echo "Editor changed to $EDITOR"
fi

# BASH Conditionals
 [[ -z STRING ]] 	        Empty string
 [[ -n STRING ]]            Not empty string    
 [[ STRING =~ STRING ]] 	Regexp

# File conditions
 [[ -e FILE ]] 	            Exists
 [[ -x FILE ]] 	            Executable
 [[ FILE1 -nt FILE2 ]] 	    FILE1 is newer than FILE2
 [[ -w FILE ]] 	            Writable
 [[ -s FILE ]] 	            Size is > 0 bytes
