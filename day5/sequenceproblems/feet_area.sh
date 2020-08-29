#!/bin/bash -x

read -p "Enter the length of the plot in feets" l
read -p "Enter the Width of the plot in feets " w
area_meters= $(( l*w/(3) ))

total_area=$(( 25*$area_meters))

echo "$total_area"
