#!/usr/bin/env bash
set -euo pipefail

cd noop-release

version="0+dev.$(git rev-parse --short HEAD)"
opsfile_contents="[{\"type\": \"replace\", \"path\": \"/releases/name=noop/version\", \"value\": \"$version\"}]"
bosh int -o <(echo "$opsfile_contents") manifests/noop.yml > ../manifest/manifest.yml

# TODO remove
cat ../manifest/manifest.yml
