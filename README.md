# Informatica: dispense per la classe prima

Tre dispense didattiche in Typst, con teoria, schemi vettoriali ed esercizi. Ogni documento ha un colore distinto; tutte le dispense condividono font, impaginazione A4 e componenti grafici.

## Leggere i PDF

| Dispensa | Colore | PDF | Pagine |
| --- | --- | --- | --- |
| Bit, byte e dimensioni dei file | Blu | [bit-byte-dimensioni.pdf](pdf/bit-byte-dimensioni.pdf) | 11 |
| File e cartelle | Verde | [file-cartelle.pdf](pdf/file-cartelle.pdf) | 14 |
| Inviare e condividere file | Arancione | [inviare-condividere-file.pdf](pdf/inviare-condividere-file.pdf) | 5 |

Le copie pronte da leggere sono in `pdf/`. GitHub Actions produce anche un artifact con i tre PDF compilati dai sorgenti del commit.

## Sorgenti

| Dispensa | Documento da compilare | Teoria | Esercizi |
| --- | --- | --- | --- |
| Bit, byte e dimensioni dei file | `src/main.typ` | `src/teoria.typ` | `src/esercizi.typ` |
| File e cartelle | `src/file-e-cartelle.typ` | Nello stesso file | `src/file-e-cartelle-esercizi.typ` |
| Inviare e condividere file | `src/inviare-condividere.typ` | Nello stesso file | `src/inviare-condividere-esercizi.typ` |

Ogni dispensa raccoglie la teoria in un unico file e gli esercizi in un secondo file. Per aggiungere o modificare argomenti, intervenire direttamente su questi file. Gli entry point applicano il template e includono gli esercizi in fondo.

- `styles/template.typ`: impaginazione, font, titoli, tabelle e temi.
- `styles/didattica.typ`: riquadri, righe di risposta, titoli degli esercizi e diagrammi.
- `assets/svg/`: schemi vettoriali, alberi delle cartelle e mappe da completare.
- `scripts/`: comandi di compilazione.
- `pdf/`: copie dei tre PDF versionate con i sorgenti.
- `dist/`: risultati locali della compilazione, esclusi da Git.

## Compilazione locale

Serve **Typst 0.15.1**. Dalla radice del repository:

```bash
bash scripts/build-all.sh
```

Il comando compila le tre dispense in `dist/` e aggiorna le copie in `pdf/`. Dopo una modifica ai sorgenti, eseguirlo prima di salvare il commit per mantenere coerenti i PDF versionati.

Per compilare una sola dispensa in `dist/`:

```bash
bash scripts/build.sh
bash scripts/build-file-cartelle.sh
bash scripts/build-inviare-condividere.sh
```

Per aggiornare un PDF durante il lavoro:

```bash
typst watch --root . src/main.typ dist/bit-byte-dimensioni.pdf
typst watch --root . src/file-e-cartelle.typ dist/file-cartelle.pdf
typst watch --root . src/inviare-condividere.typ dist/inviare-condividere-file.pdf
```

Libertinus Serif è incluso in Typst. Gli SVG usano Arial su macOS e Liberation Sans su Linux; su Ubuntu installare `fonts-liberation`. I percorsi delle immagini partono dalla radice Typst, per esempio `/assets/svg/byte.svg`: compilare sempre con `--root .`.

## Compilazione su GitHub

Il workflow **Genera PDF delle dispense** si avvia sui push a `main` quando l’ultimo messaggio di commit contiene `[pdf]`, oppure manualmente da **Actions → Genera PDF delle dispense → Run workflow**.

Compila tutte e tre le dispense con lo stesso script locale. I PDF sono scaricabili dall’artifact **dispense-informatica-pdf**, conservato per 90 giorni salvo limiti del repository. Il workflow non crea commit automatici: le copie in `pdf/` si aggiornano con la compilazione locale e il successivo commit.

## Contenuti e provenienza

La prima dispensa deriva dai sorgenti forniti nell’archivio `dispensa_bit_byte_libro_classico_revisionata_sorgenti.zip`. Le altre due riprendono le pagine didattiche Notion indicate nei rispettivi documenti di progetto:

- [File e cartelle: contenuti e fonti](README-file-cartelle.md).
- [Inviare e condividere file: contenuti e fonte](README-inviare-condividere.md).

La convenzione scolastica delle equivalenze basate su 1024 è mantenuta nella prima dispensa. Gli elenchi di parole negli esercizi da completare sono mescolati. Prima di consegnare nuove versioni, controllare visivamente i PDF, soprattutto tabelle, diagrammi e spazi delle risposte.
