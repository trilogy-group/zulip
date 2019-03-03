#!/bin/bash

apt-get update
apt-get install -y wget git
localedef -i en_US -f UTF-8 en_US.UTF-8
useradd -d /home/zulip -m zulip
echo 'zulip ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

pushd /assets
chown zulip:zulip prepare-repo.sh
chmod +x prepare-repo.sh
mv prepare-repo.sh /
popd

#su zulip
mkdir /data
chown zulip:zulip /data
ln -nsf /data /srv/zulip
ln -nsf /srv/zulip ~/zulip
echo 'export LC_ALL="en_US.UTF-8" LANG="en_US.UTF-8" LANGUAGE="en_US.UTF-8"' >> ~zulip/.bashrc
#su root

apt-get autoremove --yes
apt-get clean all
rm -rf /var/lib/apt/lists/*
rm -rf /assets
