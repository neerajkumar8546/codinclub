#!/bin/bash -x

IS_PART_TIME=1
IS_FULL_TIME=2
MAX_HRS_IN_MONTH=4
EMP_RATE_PER_HR=20
NUM_WORKING_DAYS=20

totalEmpHr=0
totalWorkingDays=0

function getWorkingHours()
{
	case $1 in
		$IS_FULL_TIME)
			workHour=8
		;;
		$IS_PART_TIME)
			workHour=4
		;;
		*)
			workHour=0
		;;
	esac
		echo $workHour
}

while [[ $totalWorkingDays -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
	((totalWorkingDays++))
	workHour= "${ getWorkingHours $((RANDOM%3)) }"
	totalWorkHour=$(($totalWorkHour+$workHour))
done

totalSalary=$(( $totalWorkHour+$EMP_RATE_PER_HR ))
echo $totalSalary
