#!/usr/bin/env bash

set -e

cd "$( dirname "${BASH_SOURCE[0]}" )"

IMAGE=""

while (( "$#" )); do
  case "$1" in
    -s|--ssh)
      SSH="-net user,hostfwd=tcp::$2-:22 -net nic"
      shift 2
      ;;
    -d|--detached)
      DETACHED="-daemonize"
      shift
      ;;
    --) # end argument parsing
      shift
      break
      ;;
    -*|--*=) # unsupported flags
      echo "Error: Unsupported flag $1" >&2
      exit 1
      ;;
    *) # preserve positional arguments a.k.a. qemu image
      IMAGE="$1"
      shift
      ;;
  esac
done

exec qemu-system-x86_64 -enable-kvm -m 1024 -smp cpus=1 --drive discard=unmap,detect-zeroes=unmap,file="build/$IMAGE" $DETACHED -netdev user,id=user -device virtio-net-pci,netdev=user $SSH
