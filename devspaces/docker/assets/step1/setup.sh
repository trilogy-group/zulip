#!/bin/bash

apt-get update
apt-get install -y wget git
localedef -i en_US -f UTF-8 en_US.UTF-8
useradd -d /home/zulip -m zulip
echo 'zulip ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers