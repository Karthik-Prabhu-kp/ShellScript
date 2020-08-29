#!/bin/bash -x

read -p " Enter number: " x

case $x in

		1)
			echo "unit"
				;;
		10)
			echo "Ten"
				;;
		100)
			echo "Hundred"
				;;
		1000)
			echo "thousand"
				;;
		10000)
			echo "ten thousand"
				;;
		*)
			echo "error:enter multiple of 10"
				;;
esac


