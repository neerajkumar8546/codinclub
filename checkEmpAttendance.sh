#!/bin/bash -x

att_check=$((RANDOM%2))

if [ $att_check -eq 1 ]
then
	echo "Present"
else
	echo "Absent"
fi
