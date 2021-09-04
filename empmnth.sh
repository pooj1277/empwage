#!/bin/bash
#Calculating Wages for a Month
isPartTime=1;
isFullTime=2;
totalSalary=0;
empRatePerHr=20;
numWorkingDays=20;
for (( day=1; day<=$numWorkingDays; day++ ))
do
	empCheck=$((RANDOM%3));
	case $empCheck in
		$isFullTime)
		empHrs=8
		echo "For Day $day The employee is working full time at wage:"
		;;
		$isPartTime)
		empHrs=4
		echo "For Day $day The employee is working part time at wage:"
		;;
		*)
		empHrs=0
		;;
	esac
salary=$(($empHrs*$empRatePerHr));
echo $salary
totalSalary=$(($totalSalary+$salary));
echo "Monthly salary of employee for $empHrs hours is $totalSalary"
done
