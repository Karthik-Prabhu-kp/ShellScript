#!/bin/bash -x

read -p " Enter a number: " a
read -p " Enter second number: " b
read -p " Enter third number: " c


operation1=$(( ($a + $b) * $c))
operation2=$(( ($c +$a) / $b))
operation3=$(( ($a % $b) + $c))
operation4=$(( ($a*$b) + $c))

Max=$operation1
Min=$operation1

if [ $operation2 -ge $operation1 ]
then
   Max=$operation2
elif [ $operation2 -lt $operation1 ]
then
   Min=$operation2
fi

if [ $operation3 -ge $Max ]
then
   Max=$operation3
elif [ $operation3 -lt $Min ]
then
   Min=$operation3
fi

if [ $operation4 -ge $Max ]
then
   Max=$operation4
elif [ $operation4 -lt $Min ]
then
   Min=$operation4
fi

echo "$Max is maximum"
echo "$Min is minimum"




