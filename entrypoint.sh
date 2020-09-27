#!/bin/sh
set -e

rubocop -v
rubocop "$@"