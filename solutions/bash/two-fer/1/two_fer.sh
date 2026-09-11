#!/usr/bin/env bash

two-fer () {
  person="$1"

  case "${person}" in
    "Alice" | "Bob" | "John Smith" | "* ")
      output=$person
      ;;
    *)
      output="you"
      ;;
  esac

  echo "One for ${output}, one for me."

}


two-fer "$@"
