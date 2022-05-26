#!/usr/bin/env bash

# Apt database update
apt update

apt install -yq \
    build-essential unzip xterm tmux openssh-server \
    wget curl coreutils                             \
    gcc make

echo "tom ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
