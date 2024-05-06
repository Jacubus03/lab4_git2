#!/bin/bash

case $1 in
  --date)
    date
    ;;
  *)
    echo "Invalid option: $1"
    ;;
esac