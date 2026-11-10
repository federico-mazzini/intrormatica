#import "/styles/didattica.typ": *
#import "/styles/template.typ": grigio

#[
#titolo-sezione[Esercizi]

= 1. Completa il testo

Utilizzare le parole proposte. Ogni parola può essere usata una volta sola.

#richiamo[
  *PAROLE DA UTILIZZARE* \
  0 · byte · bit · dimensione · 1 · dati · otto · file
]

Un computer rappresenta i #vuoto(25mm) attraverso sequenze delle cifre #vuoto(10mm) e #vuoto(10mm).

Ogni cifra binaria si chiama #vuoto(25mm). Un gruppo di #vuoto(16mm) bit forma un #vuoto(25mm).

Un #vuoto(25mm) può contenere un testo, una fotografia o un audio. La quantità di byte occupati prende il nome di #vuoto(25mm) del file.

= 2. Completa la mappa concettuale

Inserire i termini nei riquadri per completare i collegamenti.

*PAROLE:* dimensione · byte · file · bit · multipli · informazioni

#diagramma("/assets/svg/mappa.svg", width: 100%)
]

#pagebreak()
#[
= 3. Vero o falso? Motiva la risposta

Per ogni affermazione, indicare se è vera o falsa e motivare la scelta.

#affermazione(1)[Un byte è formato da otto bit.]
#affermazione(2)[1 MB corrisponde a 1000 KB.]
#affermazione(3)[Un file da 2 GB è più grande di un file da 900 MB.]

= 4. Dati e informazioni

*1.* Il numero `18` può rappresentare informazioni diverse. Scrivere tre possibili significati del dato, specificando ogni volta il contesto.

#risposta(righe: 3)

*2.* Considerare i dati: `Luca` – `7` – `Matematica`. Spiegare quale informazione si può ricavare collegando i tre dati.

#risposta(righe: 2)
]

#pagebreak()
#[
= 5. Ragionare su bit e byte

Un file contiene la seguente sequenza di cifre binarie. Indicare quanti bit e quanti byte rappresenta.

#richiamo[
  #align(center)[`01101001 11001010 00111101`]
]

#grid(columns: (1fr, 1fr), column-gutter: 10mm,
  [*Bit:* #riga-risposta(48mm)],
  [*Byte:* #riga-risposta(48mm)],
)

= 6. Ordinare i file per dimensione

Ordinare i file dal più piccolo al più grande, spiegando come sono state confrontate le dimensioni.

#table(
  columns: (1.6fr, 0.8fr),
  table.header([*File*], [*Dimensione*]),
  [`foto.jpg`], [3 MB],
  [`documento.pdf`], [750 KB],
  [`video.mp4`], [2 GB],
  [`appunti.txt`], [5 KB],
  [`musica.mp3`], [8 MB],
)

*Ordine:* #riga-risposta(122mm)

*Come hai confrontato le dimensioni?*
#risposta(righe: 2)

= 7. Esegui le equivalenze

Indicare il risultato e, dove necessario, il calcolo utilizzato.

#set enum(spacing: 10pt)
+ 3 MB = #riga-risposta(41mm) KB
  #risposta(righe: 1)
+ 4096 KB = #riga-risposta(41mm) MB
  #risposta(righe: 1)
+ 1,5 GB = #riga-risposta(41mm) MB
  #risposta(righe: 1)
+ 2 TB = #riga-risposta(41mm) GB
  #risposta(righe: 1)
]

#pagebreak()
#[
= 8. Trovare e correggere gli errori

Alcune equivalenze sono corrette e altre sbagliate. Individuare quelle errate e riscriverle correttamente.

#table(
  columns: (1fr, 1.4fr),
  table.header([*Equivalenza*], [*Corretta? / Correzione*]),
  [2 KB = 2048 B], [#riga-risposta(53mm)],
  [3 MB = 3072 KB], [#riga-risposta(53mm)],
  [4 GB = 4000 MB], [#riga-risposta(53mm)],
  [2048 KB = 2 MB], [#riga-risposta(53mm)],
  [1 TB = 1024 KB], [#riga-risposta(53mm)],
)

= 9. Problemi con le dimensioni

*1.* Una cartella contiene 4 fotografie da 3 MB ciascuna e un documento da 512 KB. Calcolare la dimensione totale della cartella, esprimendo il risultato in KB.

#risposta(righe: 2)

*2.* È possibile inviare allegati per un massimo di 10 MB. Si devono inviare un documento da 2 MB e due fotografie rispettivamente da 4 MB e 5 MB. È possibile inviarli tutti insieme? Motivare la risposta.

#risposta(righe: 2)

= 10. Spiega perché

Leggere le affermazioni e spiegare perché sono possibili o corrette.

+ Un file di testo può essere più grande di una fotografia.

  #risposta(righe: 2)

+ Due fotografie possono avere dimensioni molto diverse.

  #risposta(righe: 2)

+ Un file di 2048 KB può essere descritto anche con un numero più piccolo e un'altra unità di misura.

  #risposta(righe: 2)
]

#pagebreak()
#[
= 11. Indaga i file sul computer

Individuare tre file di tipo diverso, per esempio un documento, una fotografia e un PDF. Aprire le proprietà e leggere la dimensione di ciascun file.

#table(
  inset: (x: 7pt, y: 10pt),
  columns: (0.33fr, 1.65fr, 1fr, 1fr, 0.65fr),
  table.header([*N.*], [*Nome del file*], [*Tipo*], [*Dimensione*], [*Unità*]),
  [1], [], [], [], [],
  [2], [], [], [], [],
  [3], [], [], [], [],
)

== Ordina e spiega

Ordinare i file dal più piccolo al più grande. Se le unità di misura sono diverse, trasformare le dimensioni nella stessa unità prima di confrontarle.

#set enum(spacing: 8pt)
1. #riga-risposta(125mm)
2. #riga-risposta(125mm)
3. #riga-risposta(125mm)

= 12. Crea una breve guida

Creare un documento intitolato _Quanto occupano i file?_ che contenga la tabella compilata, una classifica dal file più piccolo al più grande e un breve testo che risponda alle domande seguenti.

+ Quale file occupa più byte?
+ Quale unità di misura compare più spesso?
+ Che differenza c'è tra il contenuto di un file e la sua dimensione?

#richiamo[
  *OBIETTIVO* \
  Capire che il byte permette di misurare la quantità di dati contenuti in un file, indipendentemente dal tipo di contenuto.
]
]
