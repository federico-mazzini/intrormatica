#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "${BASH_SOURCE[0]}")/.."
argomento="${1:?Indicare una cartella numerata}"
case "$argomento" in
  1-file-cartelle|2-inviare-condividere-file|3-bit-byte-dimensioni|4-introduzione-computer|5-software|6-hardware|7-funzionamento-computer) ;;
  *) echo "Argomento non riconosciuto: $argomento" >&2; exit 1 ;;
esac
principali=( "src/${argomento}/"[0-9][0-9]" - "*.typ )
if [[ ${#principali[@]} -ne 1 || ! -f "${principali[0]}" ]]; then
  echo "Atteso un solo documento principale per $argomento" >&2
  exit 1
fi
nome="$(basename "${principali[0]}" .typ)"
mkdir -p dist
typst compile --root . "${principali[0]}" "dist/${nome}.pdf"
