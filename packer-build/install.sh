#!/usr/bin/env bash

# Apt database update
apt update

apt install -yq \
    build-essential unzip xterm tmux openssh-server \
    wget curl coreutils                             \
    gcc                                             \
    python3 python3-pip                             \
    perl                                            \
    make gdb valgrind                               \
    imagemagick

python3 -m pip install --upgrade pip

pip3 install -q                         \
    argparse                                \
    pathlib                                 \
    recordclass                             \
    pillow

# That was updated
wget -q https://static.dfilip.xyz/pc2021-tema3-checker.zip -O /usr/lib/pc2021-tema3-checker.zip
