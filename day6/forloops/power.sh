#!/bin/bash -x

read -p "Enter power:" n

for (( i=1 ; i<=$n ; i++))
do
	echo $(( 2**$i ))
done

