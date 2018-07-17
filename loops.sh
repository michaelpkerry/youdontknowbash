#!/usr/bin/env bash

for file in *;
do
    echo $file;
done

# only shell scripts
for file in *.sh;
do
    n=$(cat $file | wc -l)
    echo -e "$file\t$n";
done

for i in $(seq 1 10);
do
    echo -e "${i} \t $(( i * i ))"
done


# C-like syntax
for(( i = 0; i < 10; i++));
do
 echo $i
done

while true; do if [[ -f $file ]]; then break; fi; done

# looping over lines in file
while read myLine;
do
    echo $myLine;
done < exercise1.txt

