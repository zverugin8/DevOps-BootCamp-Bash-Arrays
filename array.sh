#!/bin/bash

arr=({a..z})


arg0=$1
arg1=${arg0:=0}
res_str=""
if [[ $arg0 -eq 1 ]]; then many=""
else many="s"; fi


for((ind=0;ind<arg1;ind++)); do
    mkdir "./folder_${arr[ind]}"
    if (( ind<arg1-1 )); then res_str+="folder_${arr[ind]}, "
    else res_str+="folder_${arr[ind]}"; fi
done
echo "$arg0 folder$many created: $res_str"




    



    

