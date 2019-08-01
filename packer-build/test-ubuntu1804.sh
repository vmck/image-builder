#!/usr/bin/env bash

set -e

sudo shutdown 1

# Tests
echo "Hello world!"
gcc --version
make --version
which ssh
which tmux
which xterm

exit 0
