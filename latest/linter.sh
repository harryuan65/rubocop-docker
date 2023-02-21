#!/bin/sh
set -e

ls -al
BUNDLE_GEMFILE=/linter/Gemfile.linter bundle exec rubocop -v
BUNDLE_GEMFILE=/linter/Gemfile.linter bundle exec rubocop "$@"
