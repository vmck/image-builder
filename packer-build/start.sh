#! /bin/bash

sudo qemu-system-x86_64 -enable-kvm -m 1024 -smp cpus=4 -netdev user,id=user -device virtio-net-pci,netdev=user build/ubuntu1804
