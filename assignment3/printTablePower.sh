#!/bin/bash -x

read -p "Enter power of n Number : " a
power=1
table=1
i=1
j=1
while [ $i -le $a ]
do
   power=$(($power*2))
	((i++))
done
printf "\n"
echo "Table of 2^$a : "$power
printf "\n"

if [ $power -le 256 ]
then
		while [ $j -le 10 ]
		do
			table=$(($power*$j))
			echo $table
			((j++))
		done
else
	echo "2^$a is greater than 256..."
fi

