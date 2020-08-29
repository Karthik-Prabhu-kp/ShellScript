#!/bin/bash -x

echo "Add your lucky number between 1 to 100"

low=1
high=100
mid=0

while (( $low != $mid ))
do
	mid=$(( low + (high-low)/2 ))
	read -p "Enter 1 if the number is less than $mid or Enter 0 if the number is greater than $mid: " answer
	if (( $mid == $low ))
	then
		if (( $answer == 1 ))
		then
			break
		else
			echo $((mid+1))
			break
		fi
	fi

	if (( $answer == 1 ))
	then
		high=$mid
	else
		low=$(( $mid + 1 ))
	fi
done


echo Magic Number is $mid


