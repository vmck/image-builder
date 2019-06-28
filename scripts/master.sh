#!/bin/bash -ex

export DEBIAN_FRONTEND=noninteractive
apt-get update -qq
apt-get install -yqq git python3 unzip docker.io supervisor python3-venv
echo 'vm.max_map_count=262144' | sudo tee -a /etc/sysctl.d/es.conf
sysctl --system
adduser vagrant docker
