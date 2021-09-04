#!/bin/bash 
#Refactor the Code to write a function to get work hours

#CONSTANTS FOR THE PROGRAM
IS_PART_TIME=1;
IS_FULL_TIME=2;
MAX_HRS_IN_MONTH=4;
EMP_RATE_PER_HR=20;
NUM_WORKING_DAYS=20;

#VARIABLES
totalEmpHr=0;
totalWorkingDays=0;

declare -A dailyWage
function getWorkHrs(){
	case $1 in
	$IS_FULL_TIME)
	empHrs=8
	;;
	$is_part_time)
	empHrs=4
	;;
	*)
	empHrs=0
	;;
	esac
	echo $empHrs
}

function getEmpWage(){
	loacal empHr=$1
	echo $(($empHr*$EMP_RATE_PER_HR))
}

while [[ $totalEmpHrs -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
	((totalWorkingDays++))
	empCheck=$((RANDOM%3));
	empHrs="$( getWorkHrs $empCheck )"
	totalEmpHrs=$(($totalEmpHrs+$empHrs))
        dailyWage["Day "$totalWorkingDays]="$(( getEmpWage $epHrs ))"
done

totalSalary=$(($totalEmpHrs*$EMP_RATE_PER_HR));
#echo "Total Working Hours = $totalWorkHours"
echo ${dailyWage[@]}
echo ${!dailyWage[@]}
