
# find results containing ipv4 adress inside

~~~
# only prints the ip adresses
grep -Eo "([0-9]{1,3}[\.]){3}[0-9]{1,3}"

# prinst result aswell as file name and directory
grep -Eo "([0-9]{1,3}[\.]){3}[0-9]{1,3}" *   
~~~