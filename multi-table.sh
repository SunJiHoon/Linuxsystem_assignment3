#!/bin/sh

if [ $# -ne 2 ]
then
	echo "Invalid input"
	exit 0
fi
if [ $1 -lt 1 ]
then 
	echo "Input must be greater than 0"
	exit 0
fi
if [ $2 -lt 1 ]
then
	echo "Input must be greater than 0"
	exit 0
fi
temp=""
for i in $(seq 1 $1)
do
	for j in $(seq 1 $2)
	do
		tempNum=`expr $i \* $j`
		temp="$temp$i*$j=$tempNum\t"
	done
	echo $temp
	temp=""
done
exit 0
