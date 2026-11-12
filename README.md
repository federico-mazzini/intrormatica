# Informatica: dispense per la classe prima

Dispense didattiche in Typst, con teoria, schemi ed esercizi. Ogni documento ha un colore distinto; font, impaginazione A4 e componenti grafici sono condivisi.

## PDF completi

La cartella `dist/` contiene soltanto i sette PDF completi generati, con teoria ed esercizi dove presenti:

- `01 - File e cartelle.pdf`
- `02 - Inviare e condividere file.pdf`
- `03 - Bit, byte e dimensioni dei file.pdf`
- `04 - Introduzione ai computer.pdf`
- `05 - Il software.pdf`
- `06 - Hardware.pdf`
- `07 - Come funziona un computer.pdf`

`dist/` è esclusa da Git: i PDF si generano localmente o si scaricano dall’artifact **dispense-informatica-pdf** di GitHub Actions. Non ci sono copie versionate dei PDF né ZIP in questa cartella.

## Sorgenti

Ogni cartella numerata di `src/` contiene tre file:

- `NN - Titolo.typ`: documento principale da compilare, che applica lo stile e unisce teoria ed esercizi.
- `N-1-argomento.typ`: teoria.
- `N-2-esercizi.typ`: esercizi; dove non previsti, il file è vuoto.

I file principali sono:

- `src/1-file-cartelle/01 - File e cartelle.typ`
- `src/2-inviare-condividere-file/02 - Inviare e condividere file.typ`
- `src/3-bit-byte-dimensioni/03 - Bit, byte e dimensioni dei file.typ`
- `src/4-introduzione-computer/04 - Introduzione ai computer.typ`
- `src/5-software/05 - Il software.typ`
- `src/6-hardware/06 - Hardware.typ`
- `src/7-funzionamento-computer/07 - Come funziona un computer.typ`

Gli stili sono in `styles/`, i diagrammi in `assets/svg/` e le fotografie in `assets/immagini/`.

## Compilazione locale

Serve **Typst 0.15.1**. Dalla radice del progetto:

```bash
bash scripts/build-all.sh
```

Per compilare una sola dispensa completa:

```bash
bash scripts/build-one.sh 1-file-cartelle
```

Sono disponibili anche i comandi brevi `build.sh`, `build-file-cartelle.sh`, `build-inviare-condividere.sh` e `build-hardware-software.sh` in `scripts/`. Tutti scrivono solo i PDF completi in `dist/`.

Per creare separatamente uno ZIP dei sorgenti:

```bash
python3 scripts/package-sources.py 1-file-cartelle
```

Gli ZIP sono salvati in `tmp/sorgenti/`, esclusa da Git. Il pacchetto conserva i sorgenti e le risorse necessarie; dalla cartella estratta si può usare `bash scripts/build-one.sh 1-file-cartelle`.

Libertinus Serif è incluso in Typst. Gli SVG usano Arial su macOS e Liberation Sans su Linux; su Ubuntu installare `fonts-liberation`. Le immagini usano percorsi dalla radice Typst: compilare sempre con `--root .`.

## Salvataggio automatico in VS Code

Aprire la cartella radice del progetto e installare **Tinymist Typst**. La configurazione `.vscode/settings.json` esporta il PDF a ogni salvataggio con **Command+S**.

Su un nuovo computer, dopo aver rinominato un file principale o se Tinymist perde l’associazione tra le parti, eseguire:

```bash
bash scripts/setup-vscode.sh
```

Lo script registra in `tinymist.lock` i sette documenti completi e aggiorna la cache delle dipendenze. Poi eseguire **Developer: Reload Window** dalla palette comandi di VS Code.

Si può lavorare direttamente sulla teoria o sugli esercizi: Tinymist compila il documento principale corrispondente. Il nome del PDF coincide con quello del file principale, per esempio `dist/01 - File e cartelle.pdf`. Se ci sono errori nel sorgente, il PDF si aggiorna dopo averli corretti.

Per seguire le modifiche anche dal terminale:

```bash
typst watch --root . "src/1-file-cartelle/01 - File e cartelle.typ" "dist/01 - File e cartelle.pdf"
```

## Compilazione su GitHub

Il workflow **Genera PDF delle dispense** si avvia sui push a `main` quando il messaggio dell’ultimo commit contiene `[pdf]`, oppure manualmente da **Actions → Genera PDF delle dispense → Run workflow**.

Usa lo stesso comando locale `bash scripts/build-all.sh`. L’artifact **dispense-informatica-pdf** contiene soltanto i sette PDF completi con gli stessi nomi di `dist/`; è conservato per 90 giorni, salvo limiti del repository. Il workflow non crea commit automatici.

## Contenuti e provenienza

La prima dispensa deriva dai sorgenti forniti nell’archivio `dispensa_bit_byte_libro_classico_revisionata_sorgenti.zip`. Le altre due riprendono le pagine didattiche Notion indicate nei rispettivi documenti di progetto:

- [File e cartelle: contenuti e fonti](README-file-cartelle.md).
- [Inviare e condividere file: contenuti e fonte](README-inviare-condividere.md).

La convenzione scolastica delle equivalenze basate su 1024 è mantenuta nella prima dispensa. Gli elenchi di parole negli esercizi da completare sono mescolati. Prima di consegnare nuove versioni, controllare visivamente i PDF, soprattutto tabelle, diagrammi e spazi delle risposte.
