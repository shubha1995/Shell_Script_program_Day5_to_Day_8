#!/bin/bash -x

array=(2 -1 -1 2 -1)

echo ${array[@]}

for(( index=0; index<5; index++ ))
do
   for(( index1=index+1; index1<5; index1++ ))
   do
      for(( index2=index2+1; index2<5; index2++ ))
      do
         if [ $(($((array[index]))+$((array[index1]))+$((array[index2])))) -eq 0 ]
         then
            echo "${array[index]} ${array[index1]} ${array[index2]}"
         fi 
      done
   done
done
