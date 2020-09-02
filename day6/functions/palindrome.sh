#!/bin/bash -x

read -p "Enter the first number" n

function palindrome_check(){

remainder=0
rev=0
temp=$n

while [ $n -gt 0 ]
do
	remainder=$(( $n % 10))
	rev=$((($rev*10)+$remainder))
	n=$(( $n / 10))
   
done

if [ $temp -eq $rev ]
then
    echo "Number is palindrome"
else
    echo "Number is not palindrome"
fi


}

result=$(palindrome_check $n)
echo $result
