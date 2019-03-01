#!/bin/bash

pushd /data
sudo chown -R zulip:zulip .
if [ ! -d ".git" ]; then
    git init
fi
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
tools/provision --docker
for file in tools/clean-repo tools/webpack
do
  chmod +x $file
done
popd