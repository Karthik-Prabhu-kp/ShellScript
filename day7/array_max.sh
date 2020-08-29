#!/bin/bash -x

count=0

Array[((count++))]=$(( RANDOM%100 ))
Array[((count++))]=$(( RANDOM%100 ))
Array[((count++))]=$(( RANDOM%100 ))
Array[((count++))]=$(( RANDOM%100 ))
Array[((count++))]=$(( RANDOM%100 ))
Array[((count++))]=$(( RANDOM%100 ))
Array[((count++))]=$(( RANDOM%100 ))
Array[((count++))]=$(( RANDOM%100 ))
Array[((count++))]=$(( RANDOM%100 ))
Array[((count++))]=$(( RANDOM%100 ))


largest=${Array[0]}
secondlargest=${Array[0]}


for((i=1; i<=10 ;i++))
do
   if [ ${Array[i]} -gt $largest ]
   then
      secondlargest=$largest
      largest=${Array[i]}
   elif
      [ ${Array[i]} -gt $secondlargest ]
  then
    secondlargest=${Array[i]}
  fi
done

smallest=${Array[0]}
secondsmallest=${Array[0]}

for((j=1; j<10 ;j++))
do
   if [ ${Array[j]} -lt $smallest ]
   then
      secondsmallest=$smallest
      smallest=${Array[j]}
   elif
      [ ${Array[j]} -lt $secondsmallest ]
  then
    secondsmallest=${Array[j]}
  fi
done

echo "second largest: $secondlargest"
echo "second smallest: $secondsmallest"
