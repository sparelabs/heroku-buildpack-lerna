#!/usr/bin/env bash

info() {
  echo "       $*" || true
}

# format output
output() {
  while IFS= read -r LINE;
  do
    # do not indent headers that are being piped through the output
    if [[ "$LINE" =~ ^-----\>.* ]]; then
      echo "$LINE" || true
    else
      echo "       $LINE" || true
    fi
  done
}

header() {
  echo "" || true
  echo "-----> $*" || true
}

bright_header() {
  echo "" || true
  echo -e "\033[1;33m-----> $* \033[0m"
}

header_skip_newline() {
  echo "-----> $*" || true
}

error() {
  echo " !     $*" >&2 || true
  echo "" || true
}
