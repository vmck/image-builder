#!/usr/bin/env bash
apt-get install -yq build-essential unzip xterm tmux openssh-server

# Apt database update
apt update

# Install wget curl and coreutils
apt install -y wget curl coreutils

# Download JDK14
wget https://static.dfilip.xyz/jdk-14.0.2_linux-x64_bin.deb -O /tmp/jdk-14_linux-x64_bin.deb

# Install JDK14
apt install -y /tmp/jdk-14_linux-x64_bin.deb

# Enable JDK14
cat <<EOF | tee /etc/profile.d/jdk14.0.2.sh
export JAVA_HOME=/usr/lib/jvm/jdk-14.0.2
export PATH=\$PATH:\$JAVA_HOME/bin
EOF

# Source JDK activation (just to have it working in the current session)
source /etc/profile.d/jdk14.0.2.sh
