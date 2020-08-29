#!/bin/bash -x

read -p "Enter year (yyyy):" year

if [ $(( year % 4 )) -eq 0 ]
then
	if [ $(( year % 100 )) -eq 0 ]
	then
		if [$(( year % 400 )) -eq 0]
		then
			echo "Its a Leap year"
		else
			echo "Not a leap Year"
		fi
	else
		echo "Its a leap year"
	fi
else
	echo "Not a leap year"
fi


