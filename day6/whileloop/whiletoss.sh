#!/bin/bash -x

IsHead=1

goal=11
Headcount=0
Tailcount=0

while [[ $Headcount -le $goal || $Tailcount -le $goal ]]
do
	Toss=$(( RANDOM%2 ))

	if [ $IsHead -eq $Toss ]
	then
		Headcount=$(($Headcount+1))
	 	echo "Heads"
	else
		Tailcount=$(($Tailcount+1))
	 	echo "Tails"
	fi
done
