#!/bin/bash -x


sum=0


for (( index=1; index<=$1; index++ ))
do
	 sum=$(echo "scale=2; $sum + 1 / $index" | bc) 
done
