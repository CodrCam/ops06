#!/bin/bash

#Script: Ops 201 Class 06 Ops Challenge Solution
#Author: Cameron Griffin
#Date of latest revision: 11-10-2022
#Purpose: Creata an array and creates files in array


# Create a script that detects if a file or directory exists, then creates it if it does not exist.
# Your script must use at least one array, one loop, and one conditional.

fileContinue="y"
arrFiles=(" ")
while [ $fileContinue == "y" ]
do
#ask user what file to create
    read -p "Enter file or directory to be created:" fileCreate
#find directory
if test -d $fileCreate
         then
                echo "$fileCreate exists as a directory on your machine."
     fi
#find files
    if [[ -f  $fileCreate ]]
then
    echo "$fileCreate exists as a file on your machine."
fi
    if [[ ! -f $fileCreate ]]
then
    echo "$fileCreate does not exist as a file on your machine."
fi
#create files is none exsist
if [[ ! -f $fileCreate ]]
then
    mkdir $fileCreate
fi
#kill loop
    read -p "Any more files to create: (y/n)" fileContinue
# adds searched files to array. So user has a report
arrFiles+=("$fileCreate")
done

for value in "${arrFiles[@]}"
do
     echo $value
done


