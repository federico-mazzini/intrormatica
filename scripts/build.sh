#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "${BASH_SOURCE[0]}")/.."
mkdir -p dist
rm -f dist/bit-byte-dimensioni.pdf
typst compile --root . src/main.typ dist/bit-byte-dimensioni.pdf
test -s dist/bit-byte-dimensioni.pdf
