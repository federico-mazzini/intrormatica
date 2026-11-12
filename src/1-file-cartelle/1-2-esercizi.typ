#import "/styles/didattica.typ": *
#import "/styles/template.typ": blu, grigio
#set heading(numbering: none)
#set par(justify: false)

#let quesito(numero, body, righe: 2) = block(width: 100%, breakable: false, above: 10pt, below: 10pt)[
  *#numero.* #body
  #risposta(righe: righe)
]
#let scelta(body) = [#box(width: 3mm, height: 3mm, stroke: 0.5pt + grigio) #body]

#titolo-sezione[Esercizi: file e cartelle]
#text(fill: grigio)[Completa, collega, ragiona e metti in pratica.]

= 1. Completa il testo

Usa ogni parola una sola volta.

#richiamo[
  *PAROLE:* estrazione · cartella · file · ZIP · sottocartella · estensione · PDF · percorso
]

Un #vuoto(26mm) è un contenitore digitale identificato da un nome. La parte finale del nome, dopo il punto, si chiama #vuoto(34mm).

Una #vuoto(30mm) raggruppa i materiali; se è contenuta in un’altra cartella si chiama #vuoto(35mm).

Il #vuoto(30mm) indica dove si trova un file. Per distribuire un documento mantenendone l’impaginazione si può usare il formato #vuoto(18mm).

Un archivio #vuoto(18mm) raccoglie file e cartelle in un solo file. L’operazione che permette di ricavarne nuovamente i singoli materiali si chiama #vuoto(33mm).

= 2. Completa la mappa

Inserisci nei riquadri: *percorso · sottocartelle · estensione · cartella*.

#diagramma("/assets/svg/mappa-esercizi-file-cartelle.svg")

#pagebreak()

= 3. Scomponi i nomi dei file

Separa il nome scelto per descrivere il contenuto dall’estensione. Scrivi l’estensione completa di punto, poi indica il tipo di contenuto.

#table(
  columns: (1.25fr, 1.1fr, 0.7fr, 1fr), inset: (x: 7pt, y: 12pt),
  table.header([Nome completo], [Nome senza estensione], [Estensione], [Tipo di contenuto]),
  [Ricerca.pdf], [], [], [],
  [Tema.docx], [], [], [],
  [Gita.jpg], [], [], [],
  [Intervista.mp3], [], [], [],
  [Classe1A.zip], [], [], [],
)

= 4. Associa e classifica

Per ogni attività scegli un’estensione adatta tra quelle proposte. Ogni estensione va usata una volta sola.

*ESTENSIONI:* .xlsx · .png · .txt · .pptx · .zip · .mp4

#table(
  columns: (2.6fr, 1fr), inset: (x: 7pt, y: 11pt),
  table.header([Materiale da salvare], [Estensione]),
  [Un breve appunto di solo testo], [],
  [Un foglio di calcolo con le spese della gita], [],
  [Una presentazione sulla propria classe], [],
  [Un’immagine del logo della scuola], [],
  [Un video del laboratorio], [],
  [Un archivio con tutti i materiali di un progetto], [],
)

#quesito(1)[Una cartella si chiama `Informatica`. Dal solo nome puoi stabilire quali tipi di file contiene? Spiega.]

#pagebreak()

= 5. Vero o falso? Motiva

Spunta una casella e spiega la tua scelta.

#affermazione(1)[Una cartella può contenere sia file sia altre cartelle.]
#affermazione(2)[L’estensione e il percorso di un file indicano la stessa cosa.]
#affermazione(3)[Un PDF è sempre impossibile da modificare.]
#affermazione(4)[Uno ZIP conserva anche l’organizzazione delle sottocartelle.]

= 6. Scegli la risposta

Per ogni domanda scegli una sola risposta.

*1. Quale elemento indica la posizione di un file?*

#scelta[Il percorso] #h(5mm) #scelta[L’estensione] #h(5mm) #scelta[Il formato PDF]

#v(7pt)
*2. Estraendo uno ZIP, che cosa ottieni?*

#scelta[File e cartelle separati] \
#scelta[Un PDF di tutti i documenti] \
#scelta[Una cartella che aggiorna automaticamente lo ZIP]

#v(7pt)
*3. Quale affermazione sul cloud è corretta?*

#scelta[I file non si trovano su alcun computer] \
#scelta[I file sono conservati su server raggiungibili tramite Internet] \
#scelta[I file non possono essere organizzati in cartelle]

#pagebreak()

= 7. Leggi l’albero delle cartelle

Osserva l’albero: rispondi usando i nomi esatti dei materiali.

#diagramma("/assets/svg/albero-file-cartelle.svg")

#quesito(1, righe: 1)[Quali sono le tre sottocartelle di `Classe 1A`?]
#quesito(2, righe: 1)[In quale cartella si trova `Tema.docx`? Quali file contiene `Informatica`?]
#quesito(3, righe: 1)[Quanti file sono rappresentati in tutto? Conta solo i file, escludendo le cartelle.]

= 8. Completa e leggi i percorsi

Supponi che `Documenti` sia una cartella creata nell’unità `C:` di un computer Windows.

*1.* Completa il percorso che porta al foglio di calcolo dell’albero.

`C:\Documenti\Classe 1A\`#vuoto(31mm)`\Esercizi.xlsx`

*2.* Scrivi il percorso completo di `Lettura.pdf`.
#risposta(righe: 1)

*3.* Considera `C:\Documenti\Classe 1A\Informatica\Dispensa.pdf`. Qual è il file? Qual è la cartella che lo contiene direttamente?
#risposta(righe: 1)

#pagebreak()

= 9. Trova e correggi gli errori

In ciascuna frase c’è un errore. Riscrivila correttamente.

#quesito(1)[«Nel nome `Appunti.txt`, l’estensione è Appunti.»]
#quesito(2)[«Esportando una relazione in PDF, l’originale modificabile viene eliminato.»]
#quesito(3)[«Se aggiungo un file alla cartella estratta, anche il vecchio ZIP si aggiorna.»]

= 10. Progetta un archivio ordinato

Nella cartella `Classe 1A` trovi questi file tutti mescolati:

#richiamo[
  `Tema.docx` · `Appunti informatica.txt` · `Esercizi matematica.xlsx` · `Lettura italiano.pdf` · `Dispensa informatica.pdf` · `Problemi matematica.pdf`
]

Disegna un albero con tre sottocartelle (*Italiano*, *Informatica*, *Matematica*) e colloca ogni file nella materia adatta. Usa nomi completi ed estensioni.

#block(width: 100%, height: 55mm, stroke: 0.5pt + rgb("#bbbbbb"), inset: 10pt)[
  #text(fill: grigio, size: 9pt)[Classe 1A]
]

#pagebreak()

= 11. Ragiona sui PDF

#quesito(1)[Devi consegnare una relazione definitiva, destinata alla lettura e alla stampa su dispositivi diversi. Quale formato scegli e perché?]
#quesito(2)[Hai esportato `Ricerca.pdf` da un documento modificabile. Dopo correggi una frase nell’originale. La copia PDF già esportata contiene la correzione? Che cosa fai per ottenere un PDF aggiornato?]
#quesito(3)[Un compagno dice: «Il PDF contiene solo immagini e non può avere collegamenti o moduli». Spiega perché non è corretto.]

= 12. Metti in ordine e risolvi

*1. Creare e inviare uno ZIP.* Numera le azioni da 1 a 4, partendo dai materiali ancora da organizzare.

#table(
  columns: (0.45fr, 3fr),
  table.header([Ordine], [Azione]),
  [], [Allego `Progetto.zip` all’email.],
  [], [Raccolgo i materiali nella cartella `Progetto`.],
  [], [Controllo che lo ZIP contenga i materiali corretti e che rientri nel limite degli allegati.],
  [], [Creo `Progetto.zip` dalla cartella.],
)

*2. Il limite dell’email.* Una cartella occupa 40 MB; lo ZIP ottenuto occupa 32 MB. L’email accetta un allegato al massimo di 25 MB. Lo ZIP si può allegare? Di quanti MB supera il limite? Proponi una soluzione per rendere disponibili tutti i materiali.
#risposta(righe: 2)

#pagebreak()

= 13. Spiega perché: i file ZIP

Rispondi alle cinque domande, motivando le tue scelte.

#quesito(1, righe: 3)[Perché uno ZIP è comodo quando devo inviare una cartella con 20 file?]
#quesito(2, righe: 3)[Che differenza c’è tra *estrarre* uno ZIP e *creare* uno ZIP?]
#quesito(3, righe: 3)[Se aggiungo un’immagine nella cartella estratta, cambia anche il vecchio ZIP?]
#quesito(4, righe: 3)[Quando è meglio usare una *cartella Drive condivisa* anziché inviare uno ZIP? Pensa a materiali che cambiano ogni giorno.]
#quesito(5, righe: 3)[Devo inviare una cartella molto grande: basta creare uno ZIP per poterla allegare a qualsiasi email?]

#pagebreak()

= 14. Sperimenta in laboratorio

Usa materiali di prova creati da te per svolgere le attività.

== A. Organizza e osserva

Crea la cartella `Laboratorio file` con le sottocartelle `Italiano` e `Informatica`. Inserisci un documento in ciascuna sottocartella. Leggi i nomi completi, incluse le estensioni, e individua i percorsi.

#table(
  columns: (0.9fr, 0.65fr, 0.9fr, 1.8fr), inset: (x: 7pt, y: 14pt),
  table.header([Nome del file], [Estensione], [Cartella che lo contiene], [Percorso completo]),
  [], [], [], [],
  [], [], [], [],
)

== B. Esporta, comprimi ed estrai

+ Esporta uno dei documenti in *PDF*. Apri il PDF e confrontalo con l’originale: l’aspetto è lo stesso? L’originale è ancora disponibile?
+ Crea `Laboratorio file.zip` dalla cartella di lavoro.
+ Estrai lo ZIP in una cartella diversa da quella originale. Controlla che siano presenti entrambe le sottocartelle e tutti i file.
+ Nella cartella estratta crea `Nuovo appunto.txt`. Riapri lo ZIP originale e controlla se contiene anche questo nuovo file.

*Che cosa hai osservato sul PDF e sullo ZIP?*
#risposta(righe: 3)

== C. Crea una breve guida

Scrivi un documento intitolato *Come organizzo e preparo i miei materiali*. Inserisci un albero delle cartelle create, un esempio di percorso completo e una spiegazione delle differenze tra *cartella*, *PDF* e *ZIP*. Esporta la guida in PDF.

#richiamo[
  *CONTROLLO FINALE* \
  Nomi chiari · estensioni corrette · cartelle ordinate · PDF leggibile · ZIP completo di tutte le sottocartelle.
]
