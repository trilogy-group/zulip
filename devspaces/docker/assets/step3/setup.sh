#!/bin/bash

sudo mkdir /data
sudo chown zulip:zulip /data
sudo ln -nsf /data /srv/zulip
ln -nsf /srv/zulip ~/zulip
echo 'export LC_ALL="en_US.UTF-8" LANG="en_US.UTF-8" LANGUAGE="en_US.UTF-8"' >> ~zulip/.bashrc