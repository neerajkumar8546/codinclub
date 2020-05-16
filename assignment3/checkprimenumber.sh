#!/bin/bash -x

counter=0
read -p "Enter Number to check prime or not : " n
echo $n

for (( i=2; i<=$n/2; ++i ))
do
	#check for non prime number
	if [ $(($n%$i)) -eq 0 ]
	then
		counter=1
		break
	fi
done

if [ $counter -eq 0 ]
then
		echo "$n is Prime Number."
else
		echo "$n is not a prime number."
fi
