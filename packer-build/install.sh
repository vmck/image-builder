#!/usr/bin/env bash
apt-get install -yq build-essential unzip xterm tmux openssh-server

# Apt database update
apt update

# Install wget curl and coreutils
apt install -y wget curl coreutils

apt install -y                       \
    gcc-8                                   \
    python3 python3-pip                     \
    perl                                    \
    make gdb valgrind \
    imagemagick

# all py packages json os pathlib recordclass subprocess sys
sudo pip3 install                           \
    argparse                                \
    pathlib                                 \
    recordclass \
    pillow

wget https://static.dfilip.xyz/pc2020-tema3-checker.zip -O /home/vagrant/pc2020-tema3-checker.zip
