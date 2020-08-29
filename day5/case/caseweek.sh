#!/bin/bash -x

read -p " Enter number between one and seven " x



case $x in

		1)
			echo "Sunday"
				;;
		2)
			echo "Monday"
				;;
		3)
			echo "Tuesday"
				;;
		4)
			echo "Wednesday"
				;;
		5)
			echo "thursday"
				;;
		6)
			echo "Friday"
				;;
		7)
			echo "Saturday"
				;;
		*)
			echo "Number is not  between one and seven"
				;;
esac

