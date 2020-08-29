#!/bin/bash -x

r1=$(( RANDOM%1000 ))
r2=$(( RANDOM%1000 ))
r3=$(( RANDOM%1000 ))
r4=$(( RANDOM%1000 ))
r5=$(( RANDOM%1000 ))

min1=0
min2=0

max1=0
max2=0

Max=0
Min=0

Minimum=0
Maximum=0



if [ $r1 -ge $r2 ]
then 
		 max1=$r1
		 min1=$r2
else
		 max1=$r2
		 min1=$r1
fi

if [ $r3 -ge $r4 ]
then
		max2=$r3
		min2=$r4
else
		max2=$r4
		min2=$r3
fi

if [ $max1 -ge $max2 ]
then
		Max=$max1
else
		Max=$max2
fi

if [ $Max -ge $r5 ]
then
		Maximum=$Max
else
		Maximum=$r5
fi
echo "biggest no is $Maximum"



if [ $min1 -lt $min2 ]
then
      Min=$min1
else
      Min=$min2
fi

if [ $Min -ge $r5 ]
then
      Minimum=$r5
else
      Minimum=$Min
fi

echo "smallest no is $Minimum"
