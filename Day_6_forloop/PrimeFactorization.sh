#!/bin/bash -x
read -p "Enter the number: " number

for (( index=2; index<=$number; ))
do
	if [ $(( number % index )) -eq 0 ]
	then
		number=$(( number / index ))
		echo "$index"
	else
		((index++))
	fi
done
