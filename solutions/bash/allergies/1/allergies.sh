#!/usr/bin/env bash

allergies () {
  score="$1"
  subcmd="$2"
  item="$3"

  if [[ "$subcmd" == "allergic_to" ]]; then
    output="false"

    case "$item" in
      "eggs")
        if [[ $((score & 1)) -eq 1 ]]; then
          output="true"
        fi
        ;;

      "peanuts")
        if [[ $((score & 2)) -eq 2 ]]; then
          output="true"
        fi
        ;;

      "shellfish")
        if [[ $((score & 4)) -eq 4 ]]; then
          output="true"
        fi
        ;;

      "strawberries")
        if [[ $((score & 8)) -eq 8 ]]; then
          output="true"
        fi
        ;;

      "tomatoes")
        if [[ $((score & 16)) -eq 16 ]]; then
          output="true"
        fi
        ;;

      "chocolate")
        if [[ $((score & 32)) -eq 32 ]]; then
          output="true"
        fi
        ;;

      "pollen")
        if [[ $((score & 64)) -eq 64 ]]; then
          output="true"
        fi
        ;;

      "cats")
        if [[ $((score & 128)) -eq 128 ]]; then
          output="true"
        fi
        ;;

    esac

  elif [[ "$subcmd" == "list" ]]; then 

    output=""
    if [[ "$((score & 1))" -eq 1 ]]; then
      output+="eggs"
    fi

    if [[ "$((score & 2))" -eq 2 ]]; then
      if [[ -z "$output" ]]; then
        output="peanuts"
      else
        output+=" peanuts"
      fi
    fi

    if [[ "$((score & 4))" -eq 4 ]]; then
      if [[ -z "$output" ]]; then
        output="shellfish"
      else
        output+=" shellfish"
      fi
    fi

    if [[ "$((score & 8))" -eq 8 ]]; then
      if [[ -z "$output" ]]; then
        output="strawberries"
      else
        output+=" strawberries"
      fi
    fi

    if [[ "$((score & 16))" -eq 16 ]]; then
      if [[ -z "$output" ]]; then
        output="tomatoes"
      else
        output+=" tomatoes"
      fi
    fi

    if [[ "$((score & 32))" -eq 32 ]]; then
      if [[ -z "$output" ]]; then
        output="chocolate"
      else
        output+=" chocolate"
      fi
    fi

    if [[ "$((score & 64))" -eq 64 ]]; then
      if [[ -z "$output" ]]; then
        output="pollen"
      else
        output+=" pollen"
      fi
    fi

    if [[ "$((score & 128))" -eq 128 ]]; then
      if [[ -z "$output" ]]; then
        output="cats"
      else
        output+=" cats"
      fi
    fi

  fi

  echo $output
}

allergies "$@"

