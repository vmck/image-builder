#!/bin/bash -ex

cd "$( dirname "${BASH_SOURCE[0]}" )"

packer build -var "vm_name=$2" $1
