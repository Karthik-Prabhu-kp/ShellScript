#!/bin/bash -x

jan=0
feb=0
mar=0
apr=0
may=0
jun=0
jul=0
aug=0
sep=0
oct=0
nov=0
dec=0

Individual=0

declare -A Month

for ((Individual=0; Individual<50 ;Individual++ ))
do
   birthmonth=$(( RANDOM%12 ))
   case "$birthmonth" in
         0) jan=$(($jan+1))
            Month[January]=$jan
            ;;
         1) feb=$(($feb+1))
            Month[Feburay]=$feb
            ;;
         2) mar=$(($mar+1))
            Month[March]=$mar
            ;;
         3) apr=$(($apr+1))
            Month[April]=$apr
            ;;
         4) may=$(($may+1))
            Month[May]=$may
            ;;
         5) jun=$(($jun+1))
            Month[June]=$jun
            ;;
         6) jul=$(($jul+1))
            Month[July]=$jul
            ;;
         7) August=$(($aug+1))
            Month[August]=$aug
            ;;
         8) sep=$(($sep+1))
            Month[September]=$sep
            ;;
         9) oct=$(($oct+1))
            Month[October]=$oct
            ;;
         10) nov=$(($nov+1))
            Month[November]=$nov
            ;;
         11) dec=$(($dec+1))
            Month[December]=$dec
            ;;
   esac
done
echo "${Month[@]} "
echo "${!Month[@]}"
