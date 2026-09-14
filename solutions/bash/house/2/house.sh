#!/usr/bin/env bash

noun=( "house" "malt" "rat" "cat" "dog" "cow with the crumpled horn" "maiden all forlorn" "man all tattered and torn" "priest all shaven and shorn" "rooster that crowed in the morn" "farmer sowing his corn" "horse and the hound and the horn" )
verb=( "lay in" "ate" "killed" "worried" "tossed" "milked" "kissed" "married" "woke" "kept" "belonged to" )

# function to generate the nth verse
verse () {
  local count=$(("$1" - 1))

  printf "This is the %s" "${noun[$count]}"
  (( count-- ))
  while [[ "$count" -ge "0" ]]; do
    printf " that %s the %s" "${verb[$count]}" "${noun[$count]}"
    (( count-=1 ))
  done
  echo " that Jack built."
}

# ensure that there are two arguments
if [[ "$#" != 2 || "$1" -lt 1 || "$2" -gt 12 || "$2" -lt "$1" ]]; then
  echo "invalid" >&2
  exit 1
fi

for (( i="$1"; i<="$2"; i++)); do verse "$i"; done

exit 0
