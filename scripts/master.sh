#!/bin/bash -ex

export DEBIAN_FRONTEND=noninteractive
apt-get update -qq
apt-get install -yqq python3-pip python3-venv git curl unzip \
    dnsutils iptables docker.io
apt-get clean
rm -rf /var/lib/apt/lists/*
adduser vagrant docker

pip3 install pipenv
pipenv --version

echo 'vm.max_map_count=262144' | sudo tee -a /etc/sysctl.d/es.conf
sysctl --system

sleep 1; until docker version; do sleep 1; done
echo "Docker installed, all good"
