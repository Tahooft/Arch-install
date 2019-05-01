#!/bin/bash
if [ $UID -eq 0 ]; then
  user=th
  dir=/usr/bin
  #shift 2     # if you need some other parameters
  #cd "$dir"
  #exec su "$user" "$0" -- "$@"
  # nothing will be executed beyond that line,
  # because exec replaces running process with the new one
  echo $UID
fi

echo "This will be run from user $UID"