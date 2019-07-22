#!/bin/bash -ex

cd "$( dirname "${BASH_SOURCE[0]}" )"

qemu-system-x86_64 -enable-kvm -m 1024 -smp cpus=1 --drive discard=unmap,detect-zeroes=unmap,file="build/$1" -netdev user,id=user -device virtio-net-pci,netdev=user
