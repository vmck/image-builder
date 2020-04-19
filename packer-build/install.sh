#!/usr/bin/env bash
apt-get install -yq build-essential unzip xterm tmux openssh-server ghc python3 make curl
curl -sSL https://get.haskellstack.org/ | sudo sh
stack setup
stack install split
