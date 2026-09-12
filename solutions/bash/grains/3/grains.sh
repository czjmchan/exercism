#!/usr/bin/env bash

if [[ $# -ne 1 ]]; then
  echo "Usage: grains <square number> | total" >&2
  exit 1
fi

if [[ $1 == "total" ]]; then
  echo "(2^64) - 1" | bc

elif (( ($1 > 0) & ($1 < 65) )); then
  printf "%u\n" "$(( 2 ** ($1 - 1) ))"

else
  echo "Error: invalid input" >&2
  exit 1
fi

exit 0
