#!/bin/bash -x
isPresent=1
randomcheck=$((RANDOM%2))
if [ $isPresent -eq $randomcheck ]; then
	empRatePerHrs=20
	workinghour=8
	salary=$(($empRatePerHrs*$workinghour))
	#echo	$salary
	#echo "Present"
else
	echo "Salary 0"
fi
echo $salary