#!/bin/bash

pushd /data
for file in tools/start-dockers \
	tools/run-dev.py \
	scripts/setup/flush-memcached \
	tools/run-dev-queue-processors \
	puppet/zulip/files/postgresql/process_fts_updates \
	tools/compile-handlebars-templates
do
  chmod +x $file
done
tools/start-dockers
popd