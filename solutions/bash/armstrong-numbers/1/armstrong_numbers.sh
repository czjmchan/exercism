#!/usr/bin/env bash

# Function to calculate the armstrong number 
armstrong () {
  num=$1
  sum=0
  count="${#num}"

  for ((index=0; index<count; index++)); do
    digit=${num:index:1}
    (( sum+=digit ** count ))
  done
  if [[ $sum == $num ]]; then
    echo "true"
  else
    echo "false"
  fi
}

# check that there is an argument
(( $# == 1 )) || exit 1
armstrong "$1"

exit 0
