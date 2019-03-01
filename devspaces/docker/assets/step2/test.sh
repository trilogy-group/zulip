#!/bin/bash

pushd /data
pushd tools
for file in test-all-docker \
    test-all \
    check-provision \
    lint \
    find-add-class \
    check-templates \
    check-urls \
    commit-message-lint \
    test-tools \
    test-backend \
    run-mypy \
    test-migrations \
    test-help-documentation \
    test-api \
    test-js-with-node \
    check-capitalization \
    check-frontend-i18n \
    test-js-with-casper
do
  chmod +x $file
done
popd
tools/test-all-docker
popd