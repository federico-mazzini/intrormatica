#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "${BASH_SOURCE[0]}")/.."
mkdir -p dist
typst compile --root . src/file-e-cartelle.typ dist/file-cartelle.pdf
test -s dist/file-cartelle.pdf
