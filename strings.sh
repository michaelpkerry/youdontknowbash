#!/usr/bin/env bash

pet=turtle
echo I have 2 ${pet}s

#get all of string starting at index 1
echo ${pet:1}
#start at index 1, get the next 2 characters
echo ${pet:1:2}

#replace first match
echo ${pet/t/m}
#replace all matches
echo ${pet//t/m}

# always a good idea to put everything in quotes

# multi-line strings

echo -e "this\nis\non\nseparate\nlines"

cat << SOMEVARIABLENAME
These
are
also
on
separate
lines
$pet
SOMEVARIABLENAME

#when first instance of SOMEVARIABLENAME is in single quotes does NOT interpolate variable
cat << 'SOMEVARIABLENAME'
These
are
also
on
separate
lines
$pet
SOMEVARIABLENAME


multiline=$(echo -e "this\nis\non\nseparate\nlines")
# won't maintains separate lines
echo $multiline
# will maintain separate lines
echo "$multiline"

#regular expression in bash
re="^[0-9]{3}-[0-9]{3}-[0-9]{4}"

tel1="555-123-4567"
tel2="1234523-3423"

if [[ "$tel1" =~ $re ]]; then echo "Match"; else echo "No Match"; fi
if [[ "$tel2" =~ $re ]]; then echo "Match"; else echo "No Match"; fi