#!/bin/bash -x

today=$(date +"%m-%d")
condition1="03-20"
condition2="06-20"


if [[ $today -ge $condition1 && $today -lt $condition2 ]]
then
   echo "true"
else
   echo "false"
fi
