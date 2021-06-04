#!/bin/bash -x


declare -A birthDay
echo "${birthDay[@]}"
index=1
while [ $index -le 50 ]
do
	random=$((RANDOM%12+1))
	birthDay[$random]=$((birthDay[$random]+1))
		((index++))
done
echo "Individuals Having Birthdays in the Same Month."
echo "${birthDay[@]}"
