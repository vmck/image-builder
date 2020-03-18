#!/usr/bin/env bash
apt-get install -yq build-essential unzip python3-pip docker.io git dnsutils iptables curl
sudo -H pip3 install pipenv
sudo adduser vagrant docker
