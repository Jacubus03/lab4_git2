#!/bin/bash

arg=$2

case $1 in
  --date | -d)
    date
    ;;
  --logs | -l)
    if  [ ! $arg]
    then
      arg=100
    fi
    for (( i=1; i<=$arg; i++ ))
    do
      echo -e "log$i.txt\n$0\n$(date)" > log$i.txt
    done
    ;;
  --help | -h)
    echo "--date | -d"
    echo "--logs n | -l n"
    echo "--help | -h"
    ;;
  *)
    echo "Invalid option: $1"
    ;;
esac