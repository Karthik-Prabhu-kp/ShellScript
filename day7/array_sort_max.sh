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

temp=0

for ((i=0; i<=10 ; i++))
do
   for((j=i-1; j<10; j++))
   do
   if [[ ${Array[j]} -gt ${Array[$((j+1))]} ]]
   then
         temp=${Array[j]}
         Array[$j]=${Array[$((j+1))]}
         Array[$((j+1))]=$temp
   fi
   done
done

echo "${Array[@]}"
echo "second largest: ${Array[8]}"
echo "second smallest: ${Array[1]}"
