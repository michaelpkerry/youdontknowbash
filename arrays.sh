#!/usr/bin/env bash

# arrays do not have types - or more properly, they're all strings?

#empty array
emptyarr=()

arr=(1 2 3 "four" 5)

echo ${arr[1]}

echo ${arr[@]}

echo ${#arr[@]}

echo ${!arr[@]}

# unset - don't use it, bc it causes problems - indices are NOT updated!!!
unset arr[1]

arr[1]="two"
arr+=( 6 7 8 )
echo ${arr[@]}

echo ${!arr[@]}

# instead, create a new array and copy over to it

# read a file into an array
somevar=($( cat somefile ))
echo ${somevar[@]:2}

echo ${somevar[@]//i/I}

for i in ${arr[@]};
do
    echo $i
done
