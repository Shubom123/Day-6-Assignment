#!/bin/bash -x

read -p "Enter number " num

for (( i=2; i<=$num/2; i++ ))
do
	result=$(($num%$i))

	if [ $result -eq 0 ]
	then
		echo Not the prime number
		exit 0
	fi
done

echo It is the prime number
