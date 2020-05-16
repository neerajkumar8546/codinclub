#!/bin/bash -x
#1=Head
#0=Tail
i=1
countHead=0
countTail=0
while [ $i -le 20 ]
do
	rand=$(($RANDOM%2))
	if [ $rand -eq 1 ]
	then
		countHead=$(( $countHead+1 ))
		if [ $countHead -eq 11 ]
		then
			echo "Wins Head"
		fi
	else 
		countTail=$(( $countTail+1 ))
		if [ $countTail -eq 11 ]
		then
				echo "Wins Tail"
		fi
	fi
	((i++))
done
