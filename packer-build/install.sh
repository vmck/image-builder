#!/usr/bin/env bash
apt-get install -yq build-essential unzip xterm tmux openssh-server ghc python3 make
curl -sSL https://get.haskellstack.org/ | sh
stack install split
