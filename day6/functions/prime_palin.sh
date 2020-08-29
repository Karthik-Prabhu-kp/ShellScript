#!/bin/bash -x
read -p "Enter a number for operation." number1
function prime(){
	number=$1
		for (( value=2; value<=number/2; value++ ))
		do
			if (( $number%$value == 0 ))
			then
				echo "not prime"
				break
			fi
		done
	echo "prime"
}
function pallindrome() {
	number2=$1
	sum=0;
	condition=$num1
	remainder=0;
		while (( $number2 > 0 ))
		do
			remainder=$(($number2%10))
			sum=$((($sum*10)+$remainder))
			number2=$(($number2/10))
		done
		if (( $condition == $sum ))
		then
			echo "Number is Palindrome"
		else
			echo "Not Palindrome"
		fi
}
result1=$(prime $number1)
	echo $result1
result2=$(pallindrome $number1)
	echo $result2
