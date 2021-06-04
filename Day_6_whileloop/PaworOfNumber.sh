#!/bin/bash -x


read -p "Enter the number: " number

power=1

 
while [ $number -ne 0 ]
do
	power=$(( power * 2 ))
	if [ $power -le 256 ]
	then
		echo $power
	fi
	((--number))
done
