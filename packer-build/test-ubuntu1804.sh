#!/usr/bin/env bash

set -e

# Tests
echo "Hello world!"
gcc --version
make --version
which ssh
which tmux
which xterm

sudo shutdown 1

exit 0
