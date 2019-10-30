#!/usr/bin/env bash

cd "$( dirname "${BASH_SOURCE[0]}" )"

PACKER_CONF=""
options=()

while (( "$#" )); do
  case "$1" in
    --option)
      options+="-var $2 "
      shift 2
      ;;
    --) # end argument parsing
      shift
      break
      ;;
    -*|--*=) # unsupported flags
      echo "Error: Unsupported flag $1" >&2
      exit 1
      ;;
    *) # preserve positional arguments a.k.a. packer configuration
      PACKER_CONF="$1"
      shift
      ;;
  esac
done

set -e

exec packer build $NAME ${options[@]} $PACKER_CONF 
