#!/bin/bash -x

read -p "Enter Start From Range : " x
read -p "Enter End Range :" y

for (( j=$x;j<$y;j++ ))
do
	flag=0
	for (( i=2;i<=$j/2;++i ))
	do
		if [ $(($j%$i)) -eq 0 ]; then
			flag=1
			break
		fi
	done
	if [ $flag -eq 0 ]; then
		printf $j"\t"
	fi
done
