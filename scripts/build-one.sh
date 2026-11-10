#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "${BASH_SOURCE[0]}")/.."
argomento="${1:?Indicare una cartella numerata}"
case "$argomento" in
  1-file-cartelle|2-inviare-condividere-file|3-bit-byte-dimensioni|4-introduzione-computer|5-software|6-hardware|7-funzionamento-computer) ;;
  *) echo "Argomento non riconosciuto: $argomento" >&2; exit 1 ;;
esac
numero="${argomento%%-*}"
mkdir -p dist pdf
typst compile --root . "src/${argomento}/${numero}-0-main.typ" "dist/${argomento}.pdf"
cp "dist/${argomento}.pdf" "pdf/${argomento}.pdf"
python3 scripts/package-sources.py "$argomento"
