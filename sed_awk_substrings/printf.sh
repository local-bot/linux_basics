# testing stuff
ls | while read line; do cat $line && printf "Filename: $line Value(s) ----> %s"  ; done;