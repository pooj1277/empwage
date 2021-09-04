#!/bin/bash
#Calculate Wages till a condition of total working hours or days is reached for a month - Assume 100 hours and 20 days

#CONSTANTS FOR THE PROGRAM
IS_PART_TIME=1;
IS_FULL_TIME=2;
MAX_HRS_IN_MONTH=10;
EMP_RATE_PER_HR=20;
NUM_WORKING_DAYS=20;

#VARIABLES
totalEmpHr=0;
totalWorkingDays=0;

while [[ $totalEmpHrs -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
	((totalWorkingDays++))
	empCheck=$((RANDOM%3));
	case $empCheck in
		$IS_FULL_TIME)
		empHrs=8
		echo "For Day $day The employee is working full time for $empHrs hours:"
		;;
		$IS_PART_TIME)
		empHrs=4
		echo "For Day $day The employee is working part time for $empHrs hours:"
		;;
		*)
		empHrs=0
		;;
	esac
	totalEmpHrs=$(($totalEmpHrs+$empHrs))
done
echo "The employee worked for total $totalEmpHrs hours in a month"
totalSalary=$(($totalEmpHrs*$EMP_RATE_PER_HR));
echo "Monthly salary of employee is $totalSalary"
