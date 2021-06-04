#!/bin/bash -x
power=1

for (( index=1; index<=$1; index++ ))
do
	power=$(( power * 2 ))
	echo $power
done
