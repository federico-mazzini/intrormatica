# File e cartelle

Nuova dispensa indipendente dalla precedente, con tutta la teoria in `src/1-file-cartelle/1-1-file-cartelle.typ` e il documento completo in `src/1-file-cartelle/01 - File e cartelle.typ`. Il template condiviso è riutilizzato senza modifiche.

Fonte: [Introduzione ai file e cartelle](https://app.notion.com/p/Introduzione-ai-file-e-cartelle-3fc7850e747480aba01bd35fd1e8af9c). La pagina Notion è stata consultata senza modificarla. Testi e tabelle sono ripresi dalla fonte con lievi adattamenti; i percorsi e l’albero usano esempi scolastici coerenti tra loro.

Gli SVG originali sono `assets/svg/albero-file-cartelle.svg` e `assets/svg/percorso-file-cartelle.svg`. Il ramo verde evidenziato corrisponde al percorso Windows `C:\Documenti\Classe 1A\Informatica\Appunti.txt`. Documenti è una cartella di esempio creata nell’unità C:.

Compilazione con Typst 0.15.1:

```bash
bash scripts/build-file-cartelle.sh
```

Output: `dist/01 - File e cartelle.pdf`. Per l’aggiornamento continuo:

```bash
typst watch --root . "src/1-file-cartelle/01 - File e cartelle.typ" "dist/01 - File e cartelle.pdf"
```

I comandi di compilazione e il workflow della prima dispensa restano invariati.

## Approfondimenti PDF e ZIP

In coda alla teoria sono aggiunte le sezioni [I file PDF](https://app.notion.com/p/4017850e747481a487f4f748e702282c) e [I file ZIP](https://app.notion.com/p/4017850e74748131ba42c44164d72c67). Ciascuna inizia su una pagina nuova; le tre pagine precedenti restano invariate. Le cinque domande della fonte ZIP sono raccolte in `src/1-file-cartelle/1-2-esercizi.typ`, incluso in fondo al documento.

I nuovi schemi vettoriali sono `esportazione-pdf.svg`, `compressione-zip.svg` ed `estrazione-zip.svg`, in `assets/svg/`. Riprendono i passaggi della teoria con nomi scolastici. Le formulazioni sullo ZIP precisano il contesto degli allegati email e suggeriscono di estrarre i documenti prima di lavorarci, evitando di presentare l’archivio come impossibile da modificare. Le pagine Notion sono state consultate senza modificarle.

## Raccolta di esercizi

`src/1-file-cartelle/1-2-esercizi.typ` contiene 14 esercizi numerati, distribuiti su otto pagine: completamento del testo, mappa concettuale, scomposizione dei nomi, associazioni, vero/falso motivato, scelta multipla, lettura dell’albero, percorsi, correzione di errori, progettazione di cartelle, casi sui PDF, riordino di operazioni e problema sui limiti degli allegati, cinque domande sugli ZIP e laboratorio con produzione di una guida.

Il PDF completo ha 14 pagine: le prime sei sono dedicate alla teoria. Gli esercizi iniziano su una pagina nuova e hanno righe per rispondere, tabelle da compilare e un riquadro per disegnare l’albero. La mappa da completare è in `assets/svg/mappa-esercizi-file-cartelle.svg`. Tutta la teoria resta nel suo file e tutti gli esercizi nel loro file; i componenti condivisi e le altre dispense non sono modificati.

Compressione ed estrazione fanno parte della sezione 7 sui file ZIP. La continuazione **7.1** segue il testo precedente senza salto pagina forzato, con un titolo verde a 19 pt della stessa dimensione dei titoli principali; le due operazioni hanno titoli interni a 14 pt.

Colore della dispensa: **verde `#167044`**. Il colore è impostato nell’entry point tramite il parametro `accento`; tabelle e riquadri usano uno sfondo coordinato.
