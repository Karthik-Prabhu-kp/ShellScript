#!bin/bash -x


i=0
j=0
digit=0
newnum=0

echo "range is 1 - 100 "
for ((j=10;j<=100 ;j++))
do
    digit=$(( $j%10 ))
    newnum=$(( $j/10 ))

      if [ $digit -eq $newnum ]
      then
      Repeat[$i]=$j
      ((i++))
      fi

done

echo "${Repeat[@]}"
