#!/bin/bash -x

read -p "Enter num1:" a
read -p "Enter num2:" b
is_palindrome()
{
    local arg=$1 i j
    for ((i = 0, j = ${#arg} - 1; i < j; ++i, --j));
    do
        [[ ${arg:i:1} = "${arg:j:1}" ]] || return
    done
}

for word in $a $b; 
do
    is_palindrome "$word" && echo "$word is palindrome"
done

echo "is not palindrome"
