#!/usr/bin/env bash

# simple pig latin
# input string (one word)
# output simple pig latin equivalent

word=$1
lead=${word:0:1}
rest=${word:1}

echo ${rest}${lead}ay