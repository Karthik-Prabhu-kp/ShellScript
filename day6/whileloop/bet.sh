#!/bin/bash -x

start=100
goal=200
win=0
lose=1
bet=0

wincheck=0

while [[ $start!=0 && $start -lt $goal ]]
do
	((bet++))
	wincheck=$((RANDOM%2))
	if [ $wincheck -eq 0 ]
	then
		win=$(($win+1))
		echo "win"
		start=$(($start+1))
	else
		echo "lose"
		start=$(($start-1))
	fi
done

echo "win count:$win"
echo "bets mande:$bet"
