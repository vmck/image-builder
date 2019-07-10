#! /bin/bash

qemu-system-x86_64 -enable-kvm -m 1024 -smp cpus=2 --drive discard=unmap,detect-zeroes=unmap,file='build/ubuntu1804' -netdev user,id=user -device virtio-net-pci,netdev=user
