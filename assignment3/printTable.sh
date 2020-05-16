#!/bin/bash -x

read -p "Enter power of n Number : " a
power=1
table=1
for (( i=1; i<=$a; i++ ))
do
	power=$(($power*2))
done
printf "\n"
echo "Table of 2^$a : "$power
printf "\n"

for (( j=1; j<=10; j++ ))
do
	table=$(($power*j))
	echo $table
	printf "\n"
done
