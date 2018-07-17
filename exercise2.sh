#!/usr/bin/env bash

function times2() {
  local num=$1
  echo $(( num * 2 ))
}

times2 3
times2 4
