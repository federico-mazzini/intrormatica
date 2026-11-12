#import "/styles/template.typ": dispensa, arancione
#import "/styles/didattica.typ": richiamo, da-ricordare, esempio-teoria

// Tutta la teoria è in questo file; le domande sono nel file esercizi.

= Inviare e condividere un file

== Inviare: consegnare una copia

Quando alleghi un file a un’email, il destinatario riceve *una copia* del file in quel momento.

- Può scaricarla e conservarla.
- Se in seguito modifichi il tuo file, *la copia già inviata non cambia*.
- Puoi inviare, ad esempio, un *PDF* da leggere oppure un file modificabile, come `.docx`, se chi lo riceve deve lavorare sulla propria copia.

#esempio-teoria[
  Scrivi gli appunti su Documenti Google → li esporti in *PDF* → alleghi il PDF all’email. Chi lo riceve vede quella versione degli appunti.
]

== Condividere: dare accesso allo stesso materiale

Con Google Drive o altri servizi cloud si può *condividere un file o una cartella* con altre persone, senza mandarne una nuova copia ogni volta.

- Chi ha accesso può vedere *la versione aggiornata* del materiale.
- Decidi *con chi* condividere e *quali permessi* concedere.

Un *link* è un collegamento che permette di raggiungere un file o una cartella. Puoi copiarlo e inviarlo, per esempio, in un’email.

#table(
  columns: (1fr, 2.5fr),
  table.header([Permesso], [Cosa permette di fare]),
  [*Visualizzatore*], [Leggere il materiale, senza modificarlo direttamente.],
  [*Editor*], [Modificare il materiale, se il tipo di file lo permette.],
)

#esempio-teoria[
  Scrivi gli appunti su Documenti Google → premi *Condividi* → dai al docente il permesso di *Visualizzatore*. Se aggiorni gli appunti, il docente può leggere la versione aggiornata dallo stesso link.
]

#da-ricordare[Il link da solo non basta][
  Chi riceve il link deve avere il permesso di aprire il materiale. Prima di inviarlo, controlla di aver dato l’accesso alla persona giusta e scelto se può solo leggere o anche modificare.
]

#pagebreak()

= Scegliere se inviare o condividere

Prima di inviare o condividere un file, è utile farsi queste domande.

#[
#show heading.where(level: 2): set block(
  stroke: (left: 2pt + arancione),
  inset: (left: 9pt, y: 4pt),
)

== Il destinatario deve solo leggere o anche modificare?

- Se deve *leggere un documento mantenendo l’impaginazione*, spesso conviene il *PDF*.
- Se deve *modificare lo stesso documento insieme a te*, conviene la *condivisione* con permesso di *Editor*.
- Se deve lavorare su *una propria copia*, puoi inviargli un file modificabile.

Il *PDF è un formato di file*, mentre l’allegato e il link sono modi per farlo arrivare agli altri. Puoi quindi inviare un PDF come allegato oppure caricarlo su Drive e condividerlo con un link.

== Il file è definitivo o potrebbe ancora cambiare?

- *Versione da consegnare:* se vuoi che chi riceve conservi quella versione del file, puoi *inviare una copia*.
- *Materiale che cambia:* se vuoi che chi riceve veda anche le modifiche successive, puoi *condividere il file*.

== Quanti file sono? Quanto pesano?

- *Un file piccolo:* si può scegliere tra invio e condivisione in base allo scopo.
- *Una cartella con molti file:* puoi condividere la cartella su Drive oppure creare *un unico file ZIP* e inviarlo.
- *Un file molto grande:* spesso è più pratico condividerlo con un link Drive, perché le email hanno limiti per gli allegati.
]

#pagebreak()

= E se devo inviare un’intera cartella?

Una cartella non si allega direttamente a un’email come un singolo documento. Si hanno due possibilità.

== A. Voglio inviare una copia di tutto il contenuto

Cartella → *creo uno ZIP* → allego il file `.zip` all’email.

Lo ZIP è *un file unico* che conserva i file e la struttura delle sottocartelle. Chi lo riceve può *estrarlo* per tornare a lavorare sui singoli documenti.

== B. Voglio dare accesso alla cartella e ai suoi aggiornamenti

Cartella su Drive → *Condividi* → scelgo le persone e i permessi → invio il link.

#richiamo[
  *Attenzione allo ZIP* \
  Lo ZIP raccoglie più file e cartelle in un solo file, che puoi poi allegare o condividere. Prima di allegarlo, controlla che la sua dimensione non superi il limite dell’email.
]

#text(size: 9pt)[Per approfondire: #link("https://app.notion.com/p/4017850e74748131ba42c44164d72c67")[I file ZIP] e #link("https://app.notion.com/p/4037850e7474812ebd41eced4595c030")[La grandezza dei file].]

= Riepilogo: quale soluzione uso?

#table(
  columns: (1.45fr, 1.05fr, 1.5fr),
  table.header([Situazione], [Scelta consigliata], [Perché?]),
  [Un PDF piccolo da consegnare una volta], [*Allegato email*], [Il destinatario riceve una copia precisa.],
  [Un documento da aggiornare insieme], [*Condivisione Drive*], [Le persone con il permesso di Editor lavorano sullo stesso documento.],
  [Una cartella da spedire come copia], [*ZIP + invio*], [Più file diventano un solo archivio.],
  [Una cartella con contenuti che cambiano nel tempo], [*Cartella Drive condivisa*], [Non devo creare uno ZIP a ogni aggiornamento.],
  [Un file troppo grande per l’invio], [*Link Drive*], [Evito il limite di dimensione degli allegati.],
)

#da-ricordare[Scegliere in base allo scopo][
  Invia un allegato per consegnare una copia. Condividi il materiale per dare accesso allo stesso file o alla stessa cartella, anche dopo le modifiche.
]
