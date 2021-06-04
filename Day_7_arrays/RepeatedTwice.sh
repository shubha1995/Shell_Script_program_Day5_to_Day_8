#!/bin/bash -x 
 
for(( index=1; index<100; index++ ))
do
number=$index

remainder=`expr $index % 10 `
number=`expr $index / 10 `

if [ $remainder -eq $number ]
then
 
    echo "To print the repeated twice:" $index

    array=($index)
fi
done
