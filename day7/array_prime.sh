#!/bin/bash
read -p "number to factorize" n

for (( i=2; i<=$n; i++ ))
do
   for (( j=0; j<n-i-1; j++))
   do
    if [ $((n%$i)) == 0 ]
    then
        factor[$j]=$i
        n=$((n/$i))
    fi
   done
done

echo "${factor[@]}"
