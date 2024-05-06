#!/bin/bash

case $1 in
  --date)
    date
    ;;
  --logs)
    for i in {1..10}
    do
      echo -e "log$i.txt\n$0\n$(date)" > log$i.txt
    done
    ;;
  *)
    echo "Invalid option: $1"
    ;;
esac