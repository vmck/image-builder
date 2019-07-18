#!/bin/bash -ex

cd "$( dirname "${BASH_SOURCE[0]}" )"

chmod 666 /dev/kvm  # it fails otherwise
packer build -var "vm_name=$2" $1
