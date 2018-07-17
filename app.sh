#!/bin/bash

usage="Please enter a name (required) and conference (optional)"
# prompt for entry of required parameter
name=${1?$usage}
# default value
conference=${2:-OSCON2018}

echo "Hello $name. Welcome to $conference"

#output all the input parameters
echo $@

#number of parameters
echo $#

#get return code
echo $?