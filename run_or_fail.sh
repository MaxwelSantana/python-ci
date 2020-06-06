#!/bin/bash
run_or_fail() {
  local explanation=$1
  shift 1
  "$@"
  # shellcheck disable=SC2181
  if [ $? != 0 ]; then
    echo "$explanation" 1>&2
    exit 1
  fi
}