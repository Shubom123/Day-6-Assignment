#!/bin/bash -x

read -p "Enter number: " n
power=0;

for (( i=0; i<=n; i++ ))
do
	res=$((2**i))
	echo $res
done
