#!/bin/bash -x

read -p "Enter nth value" n


Harmonic=0

for (( i = 1 ; i<n ; i++ ))
do	 
	 Harmonic=$(( 1/$i ))
	 echo "$Harmonic"
done
