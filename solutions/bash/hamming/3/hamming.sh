#!/bin/bash
##!/usr/bin/env bash

# check that there are 2 arguments
if [[ "$#" != 2 ]]; then
  echo "Usage: hamming.sh <string1> <string2>" >&2
  exit 1
fi

# check that the 2 arguments are of the same length
if [[ "${#1}" != "${#2}" ]]; then
  echo "strands must be of equal length" >&2
  exit 1
fi

hamming () {
  local i
  local count=0
  for (( i=0; i < "${#1}"; i++ )); do
    [[ "${1:i:1}" == "${2:i:1}" ]] || ((count++))
  done
  echo $count
}

# calculate hamming distance
output="$(hamming "$1" "$2")"
echo "$output"

exit 0
