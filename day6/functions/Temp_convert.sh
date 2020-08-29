#!/bin/bash -x

echo "input 1 for degC to degF"
echo "input 2 for degF to degC"
read -p "choice:" choice

read -p "Temperate :" Temp


function Temp_convert() {

case $choice in
	1)
	  if (( $Temp>32 && $Temp<212))
	  then
		degF=$(( `$Temp*9/5` + 32 ))
		echo "$degF" 
	  fi
	;;
	2)
	  if (($Temp>0 && $Temp<100))
	  then
		degC=$(( `$Temp-32` * 5/9 ))
           	echo "$degC"
	  fi
 		;;
	*)
		echo "error"
esac


}


result=$( Temp_convert $Temp $choice)
echo $result
