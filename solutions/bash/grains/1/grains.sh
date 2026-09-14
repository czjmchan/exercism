#!/usr/bin/env bash

if [[ $# -ne 1 ]]; then
  echo "Usage: grains <square number> | total"
  exit 1
fi

if [[ $1 == "total" ]]; then
  echo "$(( 2 ** 64 ))"
elif [[ $1 -gt 0 && $1 -lt 65 ]]; then
  echo "$(( 2 ** ($1 - 1) ))" 
else
  echo "Error: invalid input"
  exit 1
fi

exit 0
