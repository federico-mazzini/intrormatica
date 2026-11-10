#import "/styles/template.typ": dispensa, arancione
#import "/styles/didattica.typ": richiamo

// Tutta la teoria è in questo file; le domande sono nel file esercizi.
#let esempio(body) = block(
  width: 100%, breakable: false, fill: rgb("#FFF4E9"), inset: 12pt,
)[
  #set par(justify: false)
  #text(weight: "bold", fill: arancione)[Esempio]
  #parbreak()
  #body
]

= Inviare e condividere un file

== Inviare: consegnare una copia

Quando alleghi un file a un’email, il destinatario riceve *una copia* del file in quel momento.

- Può scaricarla e conservarla.
- Se in seguito modifichi il tuo file, *la copia già inviata non cambia*.
- Puoi inviare, ad esempio, un *PDF* da leggere oppure un file modificabile, come `.docx`, se chi lo riceve deve lavorare sulla propria copia.

#esempio[
  Scrivi gli appunti su Documenti Google → li esporti in *PDF* → alleghi il PDF all’email. Chi lo riceve vede quella versione degli appunti.
]

== Condividere: dare accesso allo stesso materiale

Con Google Drive o altri servizi cloud si può *condividere un file o una cartella* con altre persone, senza mandarne una nuova copia ogni volta.

- Chi ha accesso può vedere *la versione aggiornata* del materiale.
- Decidi *con chi* condividere e *quali permessi* concedere.

#table(
  columns: (1fr, 2.5fr),
  table.header([Permesso], [Cosa permette di fare]),
  [*Visualizzatore*], [Leggere il materiale, senza modificarlo direttamente.],
  [*Editor*], [Modificare il materiale, se il tipo di file lo permette.],
)

#esempio[
  Scrivi gli appunti su Documenti Google → premi *Condividi* → dai al docente il permesso di *Visualizzatore*. Se aggiorni gli appunti, il docente può leggere la versione aggiornata dal medesimo link.
]

#richiamo[
  *La differenza da ricordare* \
  Con l’*allegato* mandi una copia; con la *condivisione* concedi l’accesso a un file o una cartella su Drive. Puoi anche inviare per email il *link* a un contenuto condiviso.
]

#pagebreak()

= Scegliere se inviare o condividere

Prima di inviare o condividere un file, è utile farsi queste domande.

== Il destinatario deve solo leggere o anche modificare?

- Se deve *leggere un documento mantenendo l’impaginazione*, spesso conviene il *PDF*.
- Se deve *modificare lo stesso documento insieme a te*, conviene la *condivisione* con permesso di *Editor*.
- Se deve lavorare su *una propria copia*, puoi inviargli un file modificabile.

== Il file è definitivo o potrebbe ancora cambiare?

- *Copia definitiva o consegna:* se il file non verrà più modificato, o si vuole fissare quella versione nel tempo, ha senso *inviare* il file.
- *Materiale aggiornato nel tempo:* se il file verrà aggiornato e si vuole che il destinatario abbia sempre la versione aggiornata, ha senso *condividere* il file.

== Quanti file sono? Quanto pesano?

- *Un file piccolo:* si può scegliere tra invio e condivisione in base allo scopo.
- *Una cartella con molti file:* puoi condividere la cartella su Drive oppure creare *un unico file ZIP* e inviarlo.
- *Un file molto grande:* spesso è più pratico condividerlo con un link Drive, perché le email hanno limiti per gli allegati.

#richiamo[
  *Tre domande prima di scegliere* \
  Cosa deve fare chi riceve? Il materiale cambierà? Quanti file sono e quanto pesano?
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
  Lo ZIP *non è un sistema di invio*: è un modo per raccogliere più file e cartelle in un solo file. Va poi spedito o condiviso. Non garantisce che il contenuto diventi abbastanza piccolo per l’email.
]

#text(size: 9pt)[Per approfondire: #link("https://app.notion.com/p/4017850e74748131ba42c44164d72c67")[I file ZIP] e #link("https://app.notion.com/p/4037850e7474812ebd41eced4595c030")[La grandezza dei file].]

= Riepilogo: quale soluzione uso?

#table(
  columns: (1.45fr, 1.05fr, 1.5fr),
  table.header([Situazione], [Scelta consigliata], [Perché?]),
  [Un PDF piccolo da consegnare una volta], [*Allegato email*], [Il destinatario riceve una copia precisa.],
  [Un documento da aggiornare insieme], [*Condivisione Drive*], [Tutti gli autorizzati lavorano sullo stesso documento.],
  [Una cartella da spedire come copia], [*ZIP + invio*], [Più file diventano un solo archivio.],
  [Una cartella con contenuti che cambiano nel tempo], [*Cartella Drive condivisa*], [Non devo creare uno ZIP a ogni aggiornamento.],
  [Un file troppo grande per l’invio], [*Link Drive*], [Evito il limite di dimensione degli allegati.],
)

#richiamo[
  *Da ricordare* \
  Non esiste un metodo sempre migliore. Prima considera *cosa deve fare chi riceve*, *se il materiale cambierà*, *quanti file sono e quanto pesano*. Poi scegli tra *allegato*, *ZIP* e *condivisione Drive*.
]
