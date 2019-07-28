#!/usr/bin/env bash

set -e

sudo shutdown 1

# Tests
echo "Hello world!"
docker --version

exit 0
