#!/usr/bin/env bash

for file in pictures/*.jpeg;
do
    filenb=${file:13}
    filenb=${filenb/.jpeg}
    if [[ filenb -lt 50 ]];
    then
    echo $filenb
    fi
done