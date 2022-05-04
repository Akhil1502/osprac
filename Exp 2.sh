#!/bin/bash
echo "The OS name is: $(uname)"
echo "The kernel name is: $(uname -a)"
echo "The release number is: $(uname -r)"
echo "The current user is: $(whoami)"
echo "1:Copy-File 2:Remove-File 3:Move-File 4:Exit =="
read -p "Enter your choice:" choice
case $choice in
    1)
        read -p "Enter the source:" source
        read -p "Enter your destination:" destination
        if [ -f "$source" ]
        then
            cp $source $destination
        else
            echo "File does not exist."
        fi
        ;;
    2)
        read -p "Enter the file to delete:" delete
        if [ -f "$delete" ]
        then
            rm -f $delete
        else
            echo "File does not exist."
        fi
        ;;
    3)
        read -p "Enter the source:" source
        read -p "Enter your destination:" destination
        if [ -f "$source" ]
        then
            mv $source $destination
        else
            echo "File does not exist."
        fi
        ;;
    4)
        exit 0
esac
