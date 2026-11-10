#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "${BASH_SOURCE[0]}")/.."
mkdir -p dist
typst compile --root . src/inviare-condividere.typ dist/inviare-condividere-file.pdf
test -s dist/inviare-condividere-file.pdf
