#!/usr/bin/env python3
"""Crea il pacchetto sorgenti autonomo dell'argomento indicato."""
from pathlib import Path
from zipfile import ZipFile, ZIP_DEFLATED
import re
import sys

root = Path(__file__).resolve().parent.parent
argomento = sys.argv[1]
ammessi = (
    '1-file-cartelle', '2-inviare-condividere-file', '3-bit-byte-dimensioni',
    '4-introduzione-computer', '5-software', '6-hardware', '7-funzionamento-computer',
)
if argomento not in ammessi:
    raise SystemExit('Argomento non riconosciuto')
files = set((root / 'src' / argomento).glob('*.typ'))
if len(files) != 3:
    raise SystemExit('Ogni argomento deve avere tre sorgenti Typst')
files.update((root / 'styles').glob('*.typ'))
for p in tuple(files):
    for asset in re.findall(r'"(/assets/[^"\n]+)"', p.read_text()):
        resource = root / asset.lstrip('/')
        if resource.is_dir():
            files.update(p for p in resource.rglob('*') if p.is_file())
        else:
            files.add(resource)
files.update(root / 'scripts' / name for name in ('build-one.sh', 'package-sources.py'))
destinazione = root / 'tmp' / 'sorgenti'
destinazione.mkdir(parents=True, exist_ok=True)
with ZipFile(destinazione / (argomento + '.zip'), 'w', ZIP_DEFLATED) as archive:
    for p in sorted(files):
        if not p.is_file():
            raise SystemExit(f'Risorsa mancante: {p.relative_to(root)}')
        archive.write(p, Path(argomento) / p.relative_to(root))
