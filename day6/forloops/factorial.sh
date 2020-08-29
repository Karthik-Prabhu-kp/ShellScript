#!bin/bash -x

read -p "Enter a number:" n

if [ $n -le 0 ]
  then
  echo "Fatorials are possible only for positve numbers"
fi

factorial=1
for (( i=1;i<=n;i++))
do
	factorial=$(($factorial*$i))
done
echo "factorial is $factorial"
