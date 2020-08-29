#!/bin/bash -x

IsHead=1

Toss=$(( RANDOM%2 ))

if [ $IsHead -eq $Toss ]
then
	 echo "Heads"
else
	 echo "Tails"
fi

