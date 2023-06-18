# Find with multiple input

https://tryhackme.com/room/ninjaskills

<img src="https://tryhackme-badges.s3.amazonaws.com/kiwifruit.png" alt="TryHackMe">

https://tryhackme.com/p/kiwifruit


Answer the questions about the following files:
~~~
touch list_of_files

    8V2L
    bny0
    c4ZX
    D8B3
    FHl1
    oiMO
    PFbD
    rmfX
    SRSq
    uqyw
    v2Vb
    X1Uy
~~~

## Which of the above files are owned by the best-group group?
~~~
# option 1
for i in $(cat list_of_files); do find / -type f -name $i -exec ls -la {} \; 2>/dev/null; done;

# option 2
find / -type f \( -name 8V2L -o -name bny0 -o -name c4ZX -o -name D8B3 -o -name FHl1 -o -name oiMO -o -name PFbD -o -name rmfX -o -name SRSq -o -name uqyw -o -name v2Vb -o -name X1Uy \) -exec ls -la {} \; 2>>/dev/null
~~~

## Which of these files contain an IP address?
~~~
find / -type f \( -name 8V2L -o -name bny0 -o -name c4ZX -o -name D8B3 -o -name FHl1 -o -name oiMO -o -name PFbD -o -name rmfX -o -name SRSq -o -name uqyw -o -name v2Vb -o -name X1Uy \) -exec grep -Eo "([0-9]{1,3}[\.]){3}[0-9]{1,3}" * {} \; 2>>/dev/null 
~~~

## Which file has the SHA1 hash of 9d54da7584015647ba052173b84d45e8007eba94?
~~~
# grep didnt work
find / -type f \( -name 8V2L -o -name bny0 -o -name c4ZX -o -name D8B3 -o -name FHl1 -o -name oiMO -o -name PFbD -o -name rmfX -o -name SRSq -o -name uqyw -o -name v2Vb -o -name X1Uy \) -exec sha1sum {} \; 2>>/dev/null 
~~~

## Which file contains 230 lines?
~~~
# that damn file is missing (took me a while)
find / -type f \( -name 8V2L -o -name bny0 -o -name c4ZX -o -name D8B3 -o -name FHl1 -o -name oiMO -o -name PFbD -o -name rmfX -o -name SRSq -o -name uqyw -o -name v2Vb -o -name X1Uy \) -exec wc -l {} \; 2>>/dev/null 
~~~


