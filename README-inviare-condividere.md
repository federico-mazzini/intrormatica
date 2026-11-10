# Inviare e condividere file

Dispensa indipendente, nello stesso stile delle precedenti, con accenti arancioni.

Fonte: [Inviare o condividere file e cartelle](https://app.notion.com/p/4037850e7474819d972ffb0921d3f2c7). La pagina è stata consultata senza modificarla. Sono conservate tutte le sezioni teoriche e il riepilogo. Le domande originali sono sostituite da cinque esercizi di tipi diversi. Il testo sulle cartelle precisa il contesto degli allegati email; esempi, permessi e avvertenze sullo ZIP sono quelli della fonte.

La teoria è raccolta in `src/inviare-condividere.typ`, che applica il template e include in fondo gli esercizi di `src/inviare-condividere-esercizi.typ`. Tutte le sezioni teoriche restano in un solo file, tutti gli esercizi in un secondo file.

Con Typst 0.15.1, dalla radice:

```bash
bash scripts/build-inviare-condividere.sh
```

Output: `dist/inviare-condividere-file.pdf`.

```bash
typst watch --root . src/inviare-condividere.typ dist/inviare-condividere-file.pdf
```

Il template, le altre dispense e i loro comandi di compilazione restano invariati.

## Esercizi

Esattamente cinque esercizi numerati: completamento del testo, vero/falso motivato, associazione tra situazioni e soluzioni, riordino di operazioni e caso da risolvere. Le domande precedenti sono rimosse. Il PDF completo ha cinque pagine, di cui le prime tre di teoria sono invariate e le ultime due dedicate agli esercizi.

Colore della dispensa: **arancione `#A34708`**. Il colore è impostato nell’entry point tramite il parametro `accento`; tabelle e riquadri usano uno sfondo coordinato.
