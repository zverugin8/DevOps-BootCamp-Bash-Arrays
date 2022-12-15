#!/bin/bash

arr=({a..z})
#echo "${arr[0]}"

for d in folder_{a..z}; do 
    if [[ -d "$d" ]]; then
        echo "$d exists on your filesystem. Removing $d"
        rmdir "./$d"
    fi 
done
arg0=$1
arg1=${arg0:=0}
echo "arg1:"$arg1

for((ind=0;ind<arg1;ind++)); do
    mkdir "./folder_${arr[ind]}"
done




    



    

