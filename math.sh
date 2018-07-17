#!/usr/bin/env bash

# math in bash

abc=123
echo $(( abc + 321 ))

i=0
echo $(( i++ ))

# NEVER DO FLOATING POINT MATH

echo $(( 5/7 ))

# don't use bc either

# use awk!
myvar=$( awk -v n=7 'BEGIN{ print n/77}' )