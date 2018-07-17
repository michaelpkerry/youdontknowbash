#!/usr/bin/env bash

#regex for phone with area code
re="^\([0-9]{3}\)[[:space:]][0-9]{3}-[0-9]{4}"

[[ "(123) 345-3432" =~ $re ]] && echo Match || echo No Match