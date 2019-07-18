#!/bin/bash

sudo chmod 666 /dev/kvm  # it fails otherwise
packer build $1
