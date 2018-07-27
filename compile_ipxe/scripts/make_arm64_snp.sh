#!/bin/sh

MODE='boot'
WORKERS=8

function usage() {
  description="$(basename "$0") [-h] [-c | -m | -w]
  
  where:
    -h    show help text
    -m    set mode [boot|chain] (default: boot)
    -w    number of workers (default 8)
  "
  echo "$description"
}

while getopts m:w:h opt;
do
  case $opt in
    m)
      MODE=$OPTARG
      ;;
    w)
      WORKERS=$OPTARG
      ;;
    h|*)
      usage
      exit 1
      ;;
  esac
done

make ARCH=arm64 EMBED=${MODE}.ipxe bin-arm64-efi/snp.efi -j${WORKERS}