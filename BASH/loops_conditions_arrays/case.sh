#! /bin/bash

read distro

case $distro in
    ubuntu )
    echo "ubuntu"
    ;;

    windows | mac )
    echo ":("
    ;;

    acrh )
    echo ":)"
    ;;
esac 
