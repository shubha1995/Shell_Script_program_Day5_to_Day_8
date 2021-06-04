#!/bin/bash -x

limit=10


function calculateRandomNumber()
{
	randomCheck=$(( 100 + RANDOM % 900 ))
	echo $randomCheck
}

for (( index=0; index<$limit; index++ ))
{
	randomArray[$index]="$( calculateRandomNumber )"
}

function sortArray()
{
	for (( index=0; index<$limit; index++ ))
	{
		for (( indexOne=0; indexOne<$limit-1; indexOne++ ))
		{
			if [ ${randomArray[indexOne+1]} -lt ${randomArray[indexOne]} ]
			then
				temp=${randomArray[indexOne]}
				randomArray[indexOne]=${randomArray[indexOne+1]}
				randomArray[indexOne+1]=$temp
			fi
		}
	}
      echo ${randomArray[@]}
}

sortArray ${randomArray[@]}

echo secondMinimumValue=${randomArray[1]}
echo secondMaximumValue=${randomArray[8]}
