#!/usr/bin/env bash

set -e


# Tests
echo "Hello world!"
echo "Write text to file" > file.txt
gcc --version
make --version
which ssh
which tmux
which xterm

exit 0
