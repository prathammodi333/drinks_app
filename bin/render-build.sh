#!/usr/bin/env bash
set -o errexit
curl -fsSL https://deb.nodesource.com/setup_16.x | bash -  # Installs Node.js
apt-get install -y nodejs
bundle install
chmod +x bin/*
bundle exec rails assets:precompile
bundle exec rails assets:clean