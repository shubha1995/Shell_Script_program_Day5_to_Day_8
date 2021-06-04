#!/bin/bash -x


read -p "Enter the number to check palindrome: " number


originalNumber=$number

 
reverse=0


function palindrome()
{
	while [ $number -ne 0 ]
	do
		remainder=$(( $number % 10 ))
		reverse=$(( reverse * 10 +remainder ))
		number=$(( $number / 10 ))
	done
	echo $reverse

	if [ $originalNumber -eq $reverse ]
	then
		echo "Number is Palindrome"
	else
		echo "Number is not Palindrome"
	fi
}

 
echo result="$( palindrome $number )"
