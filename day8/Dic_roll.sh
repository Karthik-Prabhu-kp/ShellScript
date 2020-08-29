#!/bin/bash -x


declare -A dice



one=0
two=0
three=0
four=0
five=0
six=0

i=0

for ((i=0 ; i<= 11;i++ ))
do
   rnd=$(( RANDOM%6 ))

   case $rnd in
         0)one=$(($one+1))
           dice[1]=$one
          ;;

         1)two=$(($two+1))
           dice[2]=$two
          ;;

         2)three=$(($three+1))
           dice[3]=$three
          ;;

         3)four=$(($four+1))
           dice[4]=$four
          ;;

         4)five=$(($five+1))
           dice[5]=$five
          ;;

         5)six=$(($six+1))
           dice[6]=$six
          ;;

   esac

done

echo "${dice[@]}"
echo "${!dice[@]}"
