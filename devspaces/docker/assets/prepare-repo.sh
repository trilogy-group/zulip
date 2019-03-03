#!/bin/bash

sudo chown -R zulip:zulip .
#if [ ! -d ".git" ]; then
#    git init
#fi
# executables for tools/provision script
for file in tools/provision \
    tools/lib/provision.py \
    scripts/lib/setup-apt-repo \
    scripts/lib/install-node \
    scripts/lib/cd_exec \
    scripts/lib/install-shellcheck \
    scripts/lib/hash_reqs.py \
    tools/setup/emoji/build_emoji \
    tools/setup/generate_zulip_bots_static_files \
    tools/setup/generate-custom-icon-webfont \
    tools/setup/build_pygments_data \
    scripts/setup/generate_secrets.py \
    tools/update-authors-json \
    tools/inline-email-css \
    scripts/setup/configure-rabbitmq \
    scripts/get-django-setting \
    tools/setup/postgres-init-dev-db \
    scripts/setup/terminate-psql-sessions \
    tools/do-destroy-rebuild-database \
    manage.py \
    tools/setup/postgres-init-test-db \
    tools/do-destroy-rebuild-test-database \
    tools/setup/generate-fixtures \
    scripts/lib/clean-unused-caches
do
  chmod +x $file
done
# common executables for tools/start-dockers and tools/test-all-docker scripts
for file in clean-repo webpack
do
  chmod +x tools/$file
done
# executables for tools/start-dockers
for file in tools/start-dockers \
	tools/run-dev.py \
	scripts/setup/flush-memcached \
	tools/run-dev-queue-processors \
	puppet/zulip/files/postgresql/process_fts_updates \
	tools/compile-handlebars-templates
do
  chmod +x $file
done
# executables tools/test-all-docker
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