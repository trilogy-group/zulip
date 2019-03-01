#!/bin/bash

for file in provision.sh run.sh test.sh
do
    chown zulip:zulip $file
    chmod +x $file
    mv $file /
done