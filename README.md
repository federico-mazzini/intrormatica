# Informatica: dispense per la classe prima

Dispense didattiche in Typst, con teoria, schemi vettoriali ed esercizi. Ogni documento ha un colore distinto; tutte le dispense condividono font, impaginazione A4 e componenti grafici.

## Leggere i PDF

| Dispensa | Colore | PDF | Pagine |
| --- | --- | --- | --- |
| Bit, byte e dimensioni dei file | Blu | [3-bit-byte-dimensioni.pdf](pdf/3-bit-byte-dimensioni.pdf) | 11 |
| File e cartelle | Verde | [1-file-cartelle.pdf](pdf/1-file-cartelle.pdf) | 14 |
| Inviare e condividere file | Arancione | [2-inviare-condividere-file.pdf](pdf/2-inviare-condividere-file.pdf) | 5 |

Le copie pronte da leggere sono in `pdf/`. GitHub Actions produce anche un artifact con i PDF compilati dai sorgenti del commit.

## Sorgenti

| Dispensa | Documento da compilare | Teoria | Esercizi |
| --- | --- | --- | --- |
| Bit, byte e dimensioni dei file | `src/3-bit-byte-dimensioni/3-0-main.typ` | `src/3-bit-byte-dimensioni/3-1-bit-byte-dimensioni.typ` | `src/3-bit-byte-dimensioni/3-2-esercizi.typ` |
| File e cartelle | `src/1-file-cartelle/1-0-main.typ` | `src/1-file-cartelle/1-1-file-cartelle.typ` | `src/1-file-cartelle/1-2-esercizi.typ` |
| Inviare e condividere file | `src/2-inviare-condividere-file/2-0-main.typ` | `src/2-inviare-condividere-file/2-1-inviare-condividere-file.typ` | `src/2-inviare-condividere-file/2-2-esercizi.typ` |

Ogni argomento è in una cartella numerata di `src/` e ha tre file: `N-0-main.typ` applica lo stile e unisce le parti, `N-1-nome-argomento.typ` contiene la teoria e `N-2-esercizi.typ` gli esercizi. Dove non sono previsti esercizi, il relativo file è vuoto e non aggiunge pagine al PDF. Compilare il file `N-0-main.typ` dell’argomento.

- `styles/template.typ`: impaginazione, font, titoli, tabelle e temi.
- `styles/didattica.typ`: riquadri, righe di risposta, titoli degli esercizi e diagrammi.
- `assets/svg/`: schemi vettoriali, alberi delle cartelle e mappe da completare.
- `scripts/`: comandi di compilazione.
- `pdf/`: copie dei PDF versionate con i sorgenti.
- `dist/`: risultati locali della compilazione, esclusi da Git.

## Compilazione locale

Serve **Typst 0.15.1**. Dalla radice del repository:

```bash
bash scripts/build-all.sh
```

Il comando compila tutte le dispense in `dist/`, aggiorna le copie in `pdf/` e genera uno ZIP sorgenti per ogni argomento. PDF e ZIP hanno lo stesso nome base numerato della cartella, per esempio `1-file-cartelle.pdf` e `1-file-cartelle.zip`. Ogni ZIP contiene i tre file Typst e le risorse necessarie; dalla cartella estratta si può usare `bash scripts/build-one.sh 1-file-cartelle` (sostituendo l’argomento). Dopo una modifica ai sorgenti, eseguirlo prima di salvare il commit per mantenere coerenti i PDF versionati.

Per compilare una sola dispensa in `dist/`:

```bash
bash scripts/build.sh
bash scripts/build-file-cartelle.sh
bash scripts/build-inviare-condividere.sh
```

Per aggiornare un PDF durante il lavoro:

```bash
typst watch --root . src/3-bit-byte-dimensioni/3-0-main.typ dist/3-bit-byte-dimensioni.pdf
typst watch --root . src/1-file-cartelle/1-0-main.typ dist/1-file-cartelle.pdf
typst watch --root . src/2-inviare-condividere-file/2-0-main.typ dist/2-inviare-condividere-file.pdf
```

Libertinus Serif è incluso in Typst. Gli SVG usano Arial su macOS e Liberation Sans su Linux; su Ubuntu installare `fonts-liberation`. I percorsi delle immagini partono dalla radice Typst, per esempio `/assets/svg/byte.svg`: compilare sempre con `--root .`.

## Compilazione su GitHub

Il workflow **Genera PDF delle dispense** si avvia sui push a `main` quando l’ultimo messaggio di commit contiene `[pdf]`, oppure manualmente da **Actions → Genera PDF delle dispense → Run workflow**.

Compila tutte le dispense con lo stesso script locale. I PDF sono scaricabili dall’artifact **dispense-informatica-pdf**, conservato per 90 giorni salvo limiti del repository. Il workflow non crea commit automatici: le copie in `pdf/` si aggiornano con la compilazione locale e il successivo commit.

## Contenuti e provenienza

La prima dispensa deriva dai sorgenti forniti nell’archivio `dispensa_bit_byte_libro_classico_revisionata_sorgenti.zip`. Le altre due riprendono le pagine didattiche Notion indicate nei rispettivi documenti di progetto:

- [File e cartelle: contenuti e fonti](README-file-cartelle.md).
- [Inviare e condividere file: contenuti e fonte](README-inviare-condividere.md).

La convenzione scolastica delle equivalenze basate su 1024 è mantenuta nella prima dispensa. Gli elenchi di parole negli esercizi da completare sono mescolati. Prima di consegnare nuove versioni, controllare visivamente i PDF, soprattutto tabelle, diagrammi e spazi delle risposte.
