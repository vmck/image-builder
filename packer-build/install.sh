#!/usr/bin/env bash

# Apt database update
apt update

apt-get install -yq 

apt install -yq
    build-essential unzip xterm tmux openssh-server \
    wget curl coreutils                             \
    gcc-8                                           \
    python3 python3-pip                             \
    perl                                            \
    make gdb valgrind                               \
    imagemagick

# all py packages json os pathlib recordclass subprocess sys
sudo pip3 install -yq                       \
    argparse                                \
    pathlib                                 \
    recordclass                             \
    pillow

wget -q https://static.dfilip.xyz/pc2020-tema3-checker.zip -O /home/vagrant/pc2020-tema3-checker.zip
