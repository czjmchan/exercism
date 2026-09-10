#!/usr/bin/env bash

reverse-string () {
  tmpStrStart="$@"
  tmpStrEnd=""
  strLen=${#tmpStrStart}

  count=$strLen
  ((count--))
  while [[ $count -ge 0 ]]; do
    tmpStrEnd+="${tmpStrStart:count:1}"
    ((count--))
  done
  echo "$tmpStrEnd"
}

reverse-string "$@"
