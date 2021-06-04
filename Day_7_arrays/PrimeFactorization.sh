#!/bin/bash 

index1=0


function primeFacotrs()
{
	array={1}
	for (( index=2; $index<=$number; index++ ))
	do
		if [ $(($number%$index)) -eq 0 ]
		then
			array[index1]=$index
			((index1++))
			number=$(($number/$index))
		fi

		if [ $(($number%$index)) -eq 0 ]
		then
			((index--))
		fi
	done
	echo "${array[@]}"
}


read -p "Enter a number: " number

echo "Prime factors of Number are" "$( primeFacotrs $((number)))"

