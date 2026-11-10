#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "${BASH_SOURCE[0]}")/.."
for argomento in \
  1-file-cartelle \
  2-inviare-condividere-file \
  3-bit-byte-dimensioni \
  4-introduzione-computer \
  5-software \
  6-hardware \
  7-funzionamento-computer; do
  bash scripts/build-one.sh "$argomento"
done
