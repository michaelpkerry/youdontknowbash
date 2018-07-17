#!/usr/bin/env bash

filename=${1?Please enter filename}
if [[ -f $filename ]]; then
  numlines=`cat $filename | wc -l`
  echo $((numlines+1))
  exit 0
fi

echo "File does exist"
exit 1


