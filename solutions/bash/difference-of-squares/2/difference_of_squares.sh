##!/usr/bin/env bash

square_of_sum () {
  num="$1"
  (( sum = (num * (num + 1)/2 ) ))
  echo "$(( sum * sum ))"
}

sum_of_squares () {
  num="$1"
  (( sum = num * (num + 1) * (2 * num + 1)/6 ))
  echo "$sum"
}

# check that there are two parameters
[[ $# == 2 ]] || exit 1

[[ "$1" == "square_of_sum" ]] && output="$(square_of_sum $2)"
[[ "$1" == "sum_of_squares" ]] && output="$(sum_of_squares $2)"
[[ "$1" == "difference" ]] && output="$(( $(square_of_sum $2) - $(sum_of_squares $2) ))"

echo "${output}"

exit 0
