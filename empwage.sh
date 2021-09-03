#!/bin/bash
#Check Employee is Present or Absent - Use ((RANDOM)) for Attendance Check
isPresent=1;
randomCheck=$((RANDOM%2));
if [ $isPresent -eq $randomCheck ];
then
	echo "Employee is Present ";
else
	echo "Employee is Absent";
fi
