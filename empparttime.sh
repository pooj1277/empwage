#!/bin/bash
#Add Part time Employee & Wage - Assume Part time Hour is 8
isPartTime=1;
isFullTime=2;
empRatePerHr=20;
randomCheck=$((RANDOM%3));
if [ $isFullTime -eq $randomCheck ];
then
	empHrs=8;
	echo "Employee is working Full Time at wage:"
elif [ $isPartTime -eq $randomCheck ];
then 
	empHrs=4;
	 echo "Employee is working Part Time at wage:"

else
	empHrs=0;
	 echo "Employee is NOT working "

fi
salary=$(($empHrs*$empRatePerHr));
echo $salary
