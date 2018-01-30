#!/usr/bin/env bash
set -euo pipefail

cd noop-release

bosh create-release --version "0+dev.$( git rev-parse --short HEAD )"
bosh upload-release
