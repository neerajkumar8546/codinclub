#!/bin/bash -x

IS_PART_TIME=1
IS_FULL_TIME=2
MAX_HRS_IN_MONTH=4
EMP_RATE_PER_HR=20
NUM_WORKING_DAYS=20

totalEmpHr=0
totalworkingDays=0

function getWorkHrs()
{
	case $1 in 
		$IS_FULL_TIME)
			empHrs=8
		;;
		$IS_PART_TIME)
			empHrs=4
		;;
		*)
			empHrs=0
		;;
	esac
	echo $empHrs
}

function getEmpWage()
{
	echo $(($1*$EMP_RATE_PER_HR))
}

while [[ $totalEmpHrs -lt $MAX_HRS_IN_MONTH && $totalworkingDays -lt $NUM_WORKING_DAYS ]]
do
	((totalworkingDays++))
	empcheck=$((RANDOM%3))
	empHrs="$(getWorkHrs $empcheck )"
	totalEmpHrs=$(($totalEmpHrs+$empHrs))
	dailyWages[$totalworkingDays]=$(($empHrs*$EMP_RATE_PER_HR))

done

totalsalary="$( getEmpWage $totalEmpHrs )"
