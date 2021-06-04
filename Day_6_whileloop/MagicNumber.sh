#!/bin/bash -x

echo "Think any number between 1 to 100"


low=1
high=100
medium=0


while [ $low -ne $medium ]
do
	medium=$(( low + (high-low)/2 ))

	read -p "Enter 1 if number is less than $medium or Enter 0 if number is greater than $medium: " answer

	if [ $medium -eq $low ]
	then
		if [ $answer -eq 1 ]
		then
			#echo $medium
			break
		else
			echo $((medium+1))
			break
		fi
	fi

	if [ $answer -eq 1 ]
	then
		high=$medium
	else
		low=$(( $medium + 1 ))
	fi
done

echo Magic Number is $medium
