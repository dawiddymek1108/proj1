#!/bin/bash
if [[ "$1" == "--date" ]]; then
  date
fi
if [[ "$1" == "--logs" ]]; then
  num_files=${2:-100}
  for i in $(seq 1 $num_files); do
    echo -e "log$i\n$0\n$(date)" > log$i.txt
  done
fi
if [[ "$1" == "--help" ]]; then
  echo "Dostępne opcje:"
  echo "--date - wyświetla dzisiejszą datę"
  echo "--logs [n] - tworzy n plików logx.txt (domyślnie 100)"
  echo "--help - wyświetla dostępne opcje"
fi
