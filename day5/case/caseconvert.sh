#!/bin/bash -x

read -p " Enter number to be converted: " x
echo "1) Converts feet to Inches"
echo "2) Converts feet to Meters"
echo "3) Converts Inch to feet"
echo "4) Converts Meters to feet"

z=0
c=3.2

read -p "select operation 1) to 4)" y

case $y in

		1)
			z=$(( $x * 12 ))
			echo "$z Inches"
				;;
		2)
			z=$(( $x / $c ))
			echo "$z Meters"
				;;
		3)
			z=$(( $x / 12 ))
			echo "$z Feet"
				;;
		4)
			z=$(( $x * 3.2 ))
			echo "$z Feet"
				;;
		*)
			echo "select operation between 1 and 4"
				;;
esac


