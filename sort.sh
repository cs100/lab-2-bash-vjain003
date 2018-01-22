#!/bin/sh

echo
echo "Please enter how many numbers in the array"
read n


echo
echo "Please populate the array. Make sure to separate each number by a newline"

for(( i = 0 ; i < n ; i++ ))
do
read arr[$i]
done

#selection sort
for(( i = 0 ; i < n - 1 ; i++ ))
do
small=${arr[$i]}
index=$i

for(( j=i+1 ; j<n ; j++ ))
do

if(( arr[j] < small )) 
then
small=${arr[$j]}
index=$j
fi
done

temp=${arr[$i]}
arr[$i]=${arr[$index]}
arr[$index]=$temp

done

#print array
echo
echo "Here is the sorted array"

for (( i=0 ; i<n ; i++ ))
do
echo ${arr[$i]}

done
