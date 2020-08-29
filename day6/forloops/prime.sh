#!/bin/bash -x

read -p "Input number to check:" n

if [ $n == 1 ]
then
      echo " The number is neither prime nor compisite"

elif [ $n -le 3 ]
	then
	echo "$n is prime"
fi

for (( i=2 ; i<=$n/2; i++ ))
do
	primecheck=$(($n%$i))
	if [ $primecheck -eq 0 ]
	then
		echo "$n is not a primenumber"
	else
		echo "$n is a primenumber"
	fi
done
