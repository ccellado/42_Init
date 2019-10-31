#!/bin/bash
file="/etc/passwd"
nb=1
i=0
IFS=$"\n"

if [ -f $file ]
then
	for line in $(cat $file | grep -v '#')
	do
		echo "$nb"
		IFS=:
		for value in $line
		do	
			if [ $i -eq 0]
			then
				echo -e "LOGIN is $value"
			elif [ $i -eq 3]
			then
				echo "UID is $value"
			elif [ $i -eq 6]
			then
				echo "PATH is $value"
			elif [ $i -gt 6 ]
			then
				break
			fi
			i=$(($i + 1))
		done
		(( nb++ ))
		i=0
	done
else
	echo -e "File does not exist"
fi
