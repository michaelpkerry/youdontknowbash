#!/usr/bin/env bash

newarr=()
for i in $(seq 1 10);
do
    # -r -c removes quotes from json values
    response=`curl -s "https://jsonplaceholder.typicode.com/comments?postId=${i}" | jq -r -c '.[].email'`
    newarr+=( $response )
done

echo ${newarr[@]}
echo ${#newarr[@]}

for i in ${newarr[@]};
do
    echo $i
done