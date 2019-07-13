#!/bin/bash -ex

export DEBIAN_FRONTEND=noninteractive
apt-get update -qq
apt-get install -yqq python3-pip python3-venv git curl unzip \
    dnsutils iptables docker.io

df -h 2>&1
apt-get clean
rm -rf /var/lib/apt/lists/*
df -h 2>&1

adduser vagrant docker

pip3 install pipenv
pipenv --version

echo 'vm.max_map_count=262144' | sudo tee -a /etc/sysctl.d/es.conf
sysctl --system

echo "Disk & mem stats"
df -h 2>&1
free -h 2>&1

sleep 1; until docker version; do sleep 1; done
echo "Docker installed, all good"
