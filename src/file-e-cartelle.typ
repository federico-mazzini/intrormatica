#import "/styles/template.typ": dispensa, verde, grigio
#import "/styles/didattica.typ": richiamo, diagramma
#show: dispensa.with(
  titolo: "File e cartelle",
  sottotitolo: "Riconoscere i file, organizzare le cartelle e leggere i percorsi.",
  numerazione: "1.",
  accento: verde,
  sfondo: rgb("#F0F7F2"),
)

= Che cos’è un file?

Un *file* è un insieme di informazioni salvate su un computer e identificate da un nome.

Si può immaginare un file come un *contenitore digitale*: al suo interno possono esserci informazioni di diverso tipo, come testi, immagini, suoni o video.

*Esempi di file*
- Un *documento di testo*, come una relazione di informatica.
- Un’*immagine*, come una fotografia scattata con lo smartphone o scaricata da Internet.
- Un *file audio*, come una canzone o una registrazione vocale.
- Un *video*.

= Nome ed estensione di un file

Il nome completo di un file comprende due parti, separate da un punto: *il nome scelto per riconoscerlo* e *l’estensione, che ne indica il formato*.

#block(width: 100%, breakable: false, fill: rgb("#F0F7F2"), inset: 12pt)[
  #set par(justify: false)
  #align(center)[#text(size: 15pt)[Relazione di storia#text(fill: verde, weight: "bold")[.pdf]]]
  #v(5pt)
  *Relazione di storia* descrive il contenuto; *.pdf* è l’estensione.
]

== A cosa serve l’estensione?

L’*estensione* è la parte finale del nome di un file, dopo il punto: aiuta a riconoscere il formato. Permette a noi di capire di cosa si tratta e al computer di individuare un programma con cui aprirlo.

#table(
  columns: (1.35fr, 0.7fr, 1.3fr),
  table.header([File], [Estensione], [Formato]),
  [Appunti.txt], [.txt], [Testo semplice],
  [Relazione.docx], [.docx], [Documento Word],
  [Dispensa.pdf], [.pdf], [Documento PDF],
  [Vacanze.jpg], [.jpg], [Immagine],
  [Canzone.mp3], [.mp3], [Audio],
  [Video.mp4], [.mp4], [Video],
)

#pagebreak()

== Estensioni più comuni

#table(
  columns: (1.15fr, 1.6fr),
  table.header([Categoria], [Estensioni più comuni]),
  [Documenti di testo], [.txt, .docx, .pdf],
  [Fogli di calcolo], [.xlsx],
  [Presentazioni], [.pptx],
  [Immagini], [.jpg, .jpeg, .png, .gif],
  [Audio], [.mp3, .wav],
  [Video], [.mp4, .mov],
  [Archivi compressi], [.zip, .rar],
)

= Cartelle e sottocartelle

Una *cartella*, chiamata anche _directory_, è un contenitore che permette di raggruppare file e mantenerli ordinati. Usare cartelle con nomi chiari aiuta a trovare più facilmente ciò che serve.

Per esempio, si può creare una cartella per la propria classe e raccogliere al suo interno i materiali delle diverse materie.

Una cartella può contenere *sia file sia altre cartelle*: una cartella contenuta in un’altra viene chiamata *sottocartella*. Questa organizzazione su più livelli forma una *struttura gerarchica*, rappresentabile come un albero.

#diagramma("/assets/svg/albero-file-cartelle.svg")

#text(size: 9pt, fill: grigio)[Le icone distinguono cartelle e file. Il ramo verde conduce al file Appunti.txt; gli altri rami mostrano materiali di altre materie.]

#pagebreak()

= Il percorso di un file

Le cartelle sono organizzate *su livelli*: ciascuna può contenerne altre, che a loro volta possono contenere ulteriori cartelle e file.

Il *percorso* di un file, chiamato anche _path_, indica la sua posizione. È come un *indirizzo*: specifica dove trovare il file, indicando le cartelle che lo contengono.

== Un esempio concreto

Immaginiamo che la cartella *Documenti* dell’albero sia stata creata nell’unità *C:* di un computer Windows. Il percorso del file evidenziato è:

#block(width: 100%, fill: rgb("#F0F7F2"), inset: 12pt, breakable: false)[
  #set par(justify: false)
  #text(size: 10pt)[`C:\Documenti\Classe 1A\Informatica\Appunti.txt`]
]

#diagramma("/assets/svg/percorso-file-cartelle.svg")

- *C:* indica l’unità di archiviazione.
- *Documenti*, *Classe 1A* e *Informatica* sono le cartelle da attraversare, in quest’ordine.
- *Appunti.txt* è il file da aprire, all’interno di Informatica.

#richiamo[
  Su Windows il simbolo `\` separa i diversi elementi del percorso. Per trovare il file bisogna seguire tutta la sequenza delle cartelle.
]

= Dove vengono salvati file e cartelle?

- *Sul proprio computer:* i file vengono conservati nella memoria di archiviazione del computer utilizzato.
- *Nel cloud:* i file vengono conservati su altri computer, chiamati *server*, che possono trovarsi in diverse parti del mondo. Per raggiungerli ci si collega tramite *Internet*.

== Stessa organizzazione, posto diverso

*Sia sul computer sia nel cloud, i file possono essere organizzati in cartelle e sottocartelle.* Cambia il luogo in cui vengono conservati, non il modo di organizzarli.

Per esempio, una cartella *Classe 1A*, con le sottocartelle *Italiano* e *Informatica*, può essere creata sia sul proprio computer sia in un servizio cloud come OneDrive.

#pagebreak()

= I file PDF

*PDF* significa _Portable Document Format_. È un formato per *condividere documenti* mantenendo generalmente stabile l’impaginazione su computer, tablet e telefoni.

== Le caratteristiche principali

#table(
  columns: (1fr, 2fr),
  table.header([Caratteristica], [Che cosa significa]),
  [*Aspetto stabile*], [Testo e immagini restano nella stessa posizione sui diversi dispositivi.],
  [*Meno pratico da modificare*], [È pensato soprattutto per la lettura, anche se può essere modificato con strumenti specifici.],
  [*Contenuti diversi*], [Può includere testi, fotografie, tabelle, collegamenti e moduli.],
  [*Pronto da stampare*], [È adatto a distribuire una versione già impaginata di un documento.],
)

== Quando si usa?

- Per consegnare *relazioni e ricerche definitive*.
- Per distribuire *dispense e moduli*.
- Per inviare documenti destinati alla *lettura o alla stampa*.

== Dal documento al PDF

#diagramma("/assets/svg/esportazione-pdf.svg")

In *Documenti Google* si può usare *File → Scarica → Documento PDF (.pdf)*. Si crea una copia PDF e il documento originale rimane modificabile.

#richiamo[
  *Da ricordare* \
  PDF non significa «impossibile da modificare», né «automaticamente sicuro». Serve principalmente a distribuire una copia del documento dall’aspetto stabile.
]

#pagebreak()

= I file ZIP

Uno *ZIP* è un file con estensione `.zip` che contiene altri file e cartelle. È utile per *inviare tutto insieme*, mantenendo l’organizzazione originale di cartelle e sottocartelle.

== Perché usiamo i file ZIP?

- Per raccogliere una cartella con tutti i suoi file e sottocartelle in *un unico file* da inviare.
- Per *risparmiare spazio*, quando il tipo di contenuto permette di ridurne la dimensione. La riduzione non è garantita.

== Cartelle e file: dove si lavora

Una *cartella* organizza file e sottocartelle. Possiamo aggiungere, spostare, rinominare ed eliminare i file, oltre ad aprirli e modificarli.

Una cartella non si allega direttamente a un’email come un singolo documento. Per inviarne una copia completa possiamo prima raccogliere il contenuto in uno ZIP.

#block(width: 100%, fill: rgb("#F0F7F2"), inset: 12pt, breakable: false)[
  #set par(justify: false)
  *Cartella di lavoro:* `Scuola` \
  Contiene le sottocartelle *Informatica* e *Italiano*, con documenti e immagini.

  *Archivio da inviare:* `Scuola.zip` \
  Un solo file contiene gli stessi materiali e mantiene le sottocartelle.
]

== Il problema: voglio inviare una cartella

Immagina di aver creato la cartella *Scuola* con i materiali delle materie. Per inviare tutto come un unico allegato senza perdere l’organizzazione, puoi *creare un file ZIP*.

Per lavorare sui singoli documenti contenuti nello ZIP, *estrai prima il contenuto* in una cartella.

#richiamo[
  *Da ricordare* \
  Lavoro nella *cartella*; quando voglio raccogliere e spedire tutti i contenuti come *un unico file*, creo lo *ZIP*. Se i contenuti continuano a cambiare, spesso conviene condividere una cartella su Drive.
]

// Titolo di continuazione: stessa evidenza dei capitoli, gerarchia 7.1 conservata.
#[
#show heading.where(level: 2): set text(size: 19pt, weight: "bold", fill: verde)
#show heading.where(level: 3): set text(size: 14pt, weight: "bold", fill: black)
#heading(level: 2, numbering: "1.1")[Compressione ed estrazione]

=== Compressione: dalla cartella allo ZIP

La *compressione* raccoglie un insieme di file e cartelle in un unico file con estensione `.zip`. Il file ZIP può essere inviato e può occupare meno spazio, a seconda dei contenuti.

*Esempio:* `Scuola` → `Scuola.zip`. La cartella originale rimane disponibile.

#diagramma("/assets/svg/compressione-zip.svg")

#block(breakable: false)[
=== Estrazione: dal file ZIP alla cartella

L’*estrazione* permette di tornare ad avere un insieme di file e cartelle a partire dal singolo file ZIP.

#diagramma("/assets/svg/estrazione-zip.svg")
]

#richiamo[
  *Lo ZIP non si aggiorna da solo* \
  Dopo l’estrazione, lo ZIP originale rimane. Se modifichiamo i file estratti, lo ZIP *non si aggiorna automaticamente*: per inviare le modifiche dobbiamo creare un nuovo ZIP.
]

#richiamo[
  *Attenzione alle dimensioni* \
  Creare uno ZIP non garantisce che il contenuto diventi abbastanza piccolo per qualsiasi email. Bisogna controllare la dimensione dell’archivio e il limite degli allegati.
]

]

#pagebreak()
#include "file-e-cartelle-esercizi.typ"
