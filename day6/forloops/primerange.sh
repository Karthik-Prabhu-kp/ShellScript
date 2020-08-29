#!/bin/bash -x

read -p "Input start of range:" a
read -p "End of range:" b


echo "prime numbers in given range are :"
for ((j=$a ; j<=$b ; j++))
do
	for ((i=2 ; i<=$j/2 ; i++))
	do
		primecheck=$(( $j%$i ))
		if [ $primecheck -eq 0 ]
		then
			echo -n "$j"
		fi
	done
done
