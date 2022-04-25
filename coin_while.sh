#!/bin/bash -x

isHead=0
isTail=0


while [[ isHead -le 11 && isTail -le 11 ]]
do

coin=$((RANDOM%2))

if [ $coin -eq 0 ]
then
        isHead=$((isHead+1))
	echo "$isHead"
else
        isTail=$((isTail+1))
	echo "$isTail"
fi

done

if [ $isHead -ge 11 ]
then
	echo Head wins
else
	echo Tails wins
fi
