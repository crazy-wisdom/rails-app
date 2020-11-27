#!/bin/bash
set -e

# Remove a potentially pre-existing server.pid for Rails.
rm -f /var/www/tmp/pids/server.pid
bundle install --path vendor/bundle
yarn install --check-files
rails s -p 4500 -b '0.0.0.0'
# tail -f /etc/hosts

# Then exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@"
