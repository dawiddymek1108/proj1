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
if [[ "$1" == "--date" || "$1" == "-d" ]]; then
  date
fi
if [[ "$1" == "--logs" || "$1" == "-l" ]]; then
  num_files=${2:-100}
  for i in $(seq 1 $num_files); do
    echo -e "log$i\n$0\n$(date)" > log$i.txt
  done
fi
if [[ "$1" == "--help" || "$1" == "-h" ]]; then
  echo "Dostępne opcje:"
  echo "--date, -d - wyświetla dzisiejszą datę"
  echo "--logs [n], -l [n] - tworzy n plików logx.txt (domyślnie 100)"
  echo "--help, -h - wyświetla dostępne opcje"
fi
if [[ "$1" == "--init" ]]; then
  git clone https://github.com/<twoje-konto>/<nazwa-repozytorium>.git
  export PATH=$PATH:$(pwd)/<nazwa-repozytorium>
fi
if [[ "$1" == "--error" || "$1" == "-e" ]]; then
  num_files=${2:-100}
  mkdir -p error
  for i in $(seq 1 $num_files); do
    echo -e "error$i\n$0\n$(date)" > error/error$i.txt
  done
fi
