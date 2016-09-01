#!/bin/bash

# Global Variables
readonly PROGNAME=$(basename $0)

# Helper functions
assert_text() {
  local assertion=$1; shift
  local status=$1; shift

  if [[ $status -eq 0 ]]; then
    printf "\t\033[0;32m [PASS] ${assertion} \033[0m\n"
  else
    printf "\t\033[0;31m [FAIL] ${assertion} \033[0m\n"
  fi
}

usage() {
  cat <<-EOF
  Test Docker Image

  usage: $PROGNAME
    -h  print usage information
    -d  run in debug mode
EOF
  exit 0
}

# Test functions
test_powershell_command() {
  powershell -Command "& {get-host}" &> /dev/null
  local exit_status=$?

  assert_text "Powershell command successful" $exit_status
}

# Main
main() {
  if [[ "$@" == "-h" ]];  then usage; fi
  if [[ "$@" == "-d" ]];  then set -x; fi

  echo "Running tests..."
  test_powershell_command
}

main $@
