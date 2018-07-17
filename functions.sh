#!/usr/bin/env bash

function hello() {
  echo "Hello $1"
}

hello bob jack jim

#there are other ways to define functions
# can omit parentheses

function hello2 {
  echo "Hello2 $1"
}

hello2 jim

#can omit name instead

hello3 () {
  echo "Hello3 $1"
  return 123 #becomes the 'exit' code - return code
}

hello3 jack
echo $?

name="outside name"
#variables in functions can be local
function hello4(){
 local name="inside name"
  echo $name
}

hellooutput=$(hello4)
echo hellooutput = $hellooutput
echo $name

#using external functions
source library.sh
# or: . library.sh

abc