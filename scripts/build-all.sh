#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "${BASH_SOURCE[0]}")/.."
bash scripts/build.sh
bash scripts/build-file-cartelle.sh
bash scripts/build-inviare-condividere.sh
mkdir -p pdf
for nome in bit-byte-dimensioni file-cartelle inviare-condividere-file; do
  cp "dist/${nome}.pdf" "pdf/${nome}.pdf"
done
