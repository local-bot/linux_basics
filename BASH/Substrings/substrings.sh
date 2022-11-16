#! /bin/bash

str="0123test!!"

echo ${str:4:5}
# output = test!

echo $str | cut -d"3" -f2
# output test!!