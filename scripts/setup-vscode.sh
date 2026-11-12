#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "${BASH_SOURCE[0]}")/.."

# Tinymist registra i documenti completi e le relative dipendenze per Command+S.
tinymist_bin="${1:-}"
if [[ -z "$tinymist_bin" ]]; then
  tinymist_bin="$(command -v tinymist || true)"
fi
if [[ -z "$tinymist_bin" ]]; then
  for candidato in "$HOME"/.vscode/extensions/myriad-dreamin.tinymist-*/out/tinymist; do
    if [[ -x "$candidato" ]]; then tinymist_bin="$candidato"; fi
  done
fi
if [[ ! -x "$tinymist_bin" ]]; then
  echo "Installare Tinymist Typst in VS Code oppure passare il percorso di tinymist." >&2
  exit 1
fi

mkdir -p dist
for principale in src/*/[0-9][0-9]" - "*.typ; do
  nome="$(basename "$principale" .typ)"
  "$tinymist_bin" compile --save-lock --when onSave --root . "$principale" "dist/${nome}.pdf"
done
