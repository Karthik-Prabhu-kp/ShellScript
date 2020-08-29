#!/bin/bash -x

read -p "Enter power:" n

count=1
power=1
max_value=256

while [[ $count -lt $n  &&  $power -lt $max_value ]]
do
	((count++))
	power=$(( 2**$count ))
	echo -n "$power"
done

