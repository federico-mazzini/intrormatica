#import "/styles/template.typ": dispensa, verde, grigio
#import "/styles/didattica.typ": richiamo, diagramma, da-ricordare, esempio-teoria

= Che cos’è un file?

Un *file* è un insieme di informazioni salvate su un computer e identificate da un nome.

Si può immaginare un file come un *contenitore digitale*: al suo interno possono esserci informazioni di diverso tipo, come testi, immagini, suoni o video.

#esempio-teoria(titolo: [Esempi di file])[
  - Un *documento di testo*, come una relazione di informatica.
- Un’*immagine*, come una fotografia scattata con lo smartphone o scaricata da Internet.
- Un *file audio*, come una canzone o una registrazione vocale.
- Un *video*.
]

= Nome ed estensione di un file

Il nome completo di un file comprende due parti, separate da un punto: *il nome scelto per riconoscerlo* e *l’estensione, che ne indica il formato*.

#block(width: 100%, breakable: false, fill: rgb("#F0F7F2"), inset: 12pt)[
  #set par(justify: false)
  #align(center)[#text(size: 15pt)[Relazione di storia#text(fill: verde, weight: "bold")[.pdf]]]
  #v(5pt)
  *Relazione di storia* descrive il contenuto; *.pdf* è l’estensione.
]

== A cosa serve l’estensione?

L’*estensione* è la parte finale del nome di un file, dopo il punto: aiuta a riconoscere il formato. Il *formato di un file* permette a noi di capire di cosa si tratta e al computer di individuare il programma giusto con cui aprirlo.

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

#esempio-teoria[
  Un file chiamato torta.jpg fa capire a una persona che si tratta di un'immagine (e che probabilmente sarà l'immagine di una torta) e al computer che per aprire quel file dovrà utilizzare il programma che legge le immagini.
]

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

#esempio-teoria[
  Si può creare una cartella per l'anno scolastico e raccogliere al suo interno i materiali delle diverse materie.
]

Una cartella può contenere *sia file sia altre cartelle*: una cartella contenuta in un’altra viene chiamata *sottocartella*.
Continuando l'esempio fatto in precedenza, è possibile creare una cartella per ogni materia, in modo da organizzare meglio i contenuti.

L'insieme di cartelle e sottocartelle forma una *struttura gerarchica* chiamata *albero*.


#diagramma("/assets/svg/albero-file-cartelle.svg")

#text(size: 9pt, fill: grigio)[Le icone distinguono cartelle e file. Il ramo verde conduce al file Appunti.txt; gli altri rami mostrano materiali di altre materie.]

#pagebreak()

= Il percorso di un file

Come abbiamo visto, le cartelle sono organizzate *su livelli*: ciascuna può contenerne altre, che a loro volta possono contenere ulteriori cartelle e file.

Il *percorso* di un file, chiamato anche _path_, indica la sua posizione. È come un *indirizzo*: specifica dove trovare il file, indicando le cartelle che lo contengono.

== Un esempio concreto

Il percorso del file evidenziato alla pagina precedente è il seguente:

#esempio-teoria[
  #text(size: 10pt)[`C:\Documenti\Classe 1A\Informatica\Appunti.txt`]
]

#diagramma("/assets/svg/percorso-file-cartelle.svg")

- *C:* indica l’unità di archiviazione (la memoria).
- *Documenti*, *Classe 1A* e *Informatica* sono le cartelle da attraversare, in quest’ordine.
- *Appunti.txt* è il file da aprire, all’interno di Informatica.

#richiamo[
  Il simbolo `\` separa i diversi elementi del percorso. Per trovare il file bisogna seguire tutta la sequenza delle cartelle.
]

= Dove vengono salvati file e cartelle?

- *Sul computer:* i file vengono conservati nella memoria del computer utilizzato.
- *Nel cloud:* i file vengono conservati su altri computer, chiamati *server*, che possono trovarsi in diverse parti del mondo. Per raggiungerli ci si collega tramite *Internet*.

Entrambe le soluzioni hanno *vantaggi e svantaggi*. Per scegliere dove salvare un file, dobbiamo pensare a come lo useremo: ci serve su un solo computer oppure vogliamo ritrovarlo anche su altri dispositivi?

#table(
  columns: (0.8fr, 1.4fr, 1.4fr),
  table.header([Aspetto], [Sul computer], [Nel cloud]),
  [*Dove si trova*], [Nella memoria del tuo computer.], [Sui server di servizi come Drive o OneDrive.],
  [*Internet*], [*Non serve*], [*Serve* per salvare e aggiornare i file online. Alcuni si possono usare anche senza connessione.],
  [*Altri dispositivi*], [Devi portare una copia del file.], [Ritrovi il file entrando nel tuo account.],
  [*Condivisione*], [E' necessario inviare una copia, per esempio via email.], [Basta condividere il file. Se viene modificato, viene anche aggiornato automaticamente.],
  [*Possibili problemi*], [Se perdi il computer o si rompe, puoi perdere i file], [Senza Internet o accesso all’account, non è possibile utilizzare i file.],
)

#esempio-teoria[
  Se scrivi una relazione e la salvi solo sul computer di casa, a scuola dovrai portarne una copia. Se la salvi nel cloud, potrai aprirla dal computer della scuola collegandoti a Internet e accedendo al tuo account.
]

#da-ricordare[Stessa organizzazione, posto diverso][
  Sia sul computer sia nel cloud, i file possono essere organizzati in cartelle e sottocartelle. Cambia il luogo in cui vengono conservati, non il modo di organizzarli.

  Per esempio, una cartella Classe 1A, con le sottocartelle Italiano e Informatica, può essere creata sia sul proprio computer sia in un servizio cloud come Google Drive.
]

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

- Per inviare documenti destinati alla *lettura o alla stampa*.
- Per consegnare documenti *definitivi*, per cui siamo sicuri non ci saranno più modifiche.

== Dal documento al PDF

#diagramma("/assets/svg/esportazione-pdf.svg")


I programmi per scrivere documenti, come Word, Documenti Google e LibreOffice, permettono di creare una *copia in PDF*. I passaggi possono cambiare da un programma all’altro: non serve impararli tutti a memoria. Di solito basta cercare nel menu *File* una voce come *Esporta*, *Scarica* o *Salva con nome*.

#esempio-teoria[
  In *Documenti Google* si sceglie *File → Scarica → Documento PDF (.pdf)*. Si ottiene una copia in PDF, mentre il documento originale resta disponibile e modificabile.
]

#da-ricordare[Il PDF mantiene l’aspetto del documento][
  PDF non significa «impossibile da modificare», né «automaticamente sicuro». Serve a distribuire una copia del documento dall’aspetto visivo stabile.
]

#pagebreak()

= I file ZIP

Uno *ZIP* è un file con estensione `.zip` che raccoglie altri file e cartelle in *un unico file*, mantenendo l’organizzazione delle sottocartelle. Si chiama anche *archivio ZIP*.

== Perché usiamo i file ZIP?

- Per *inviare più file insieme*, per esempio i documenti e le immagini di una ricerca.
- Per *risparmiare spazio*: la compressione può ridurre la dimensione dei file, ma il risultato dipende dal loro contenuto.

== Creare uno ZIP: dalla cartella a un unico file

#esempio-teoria[
  Immagina di avere una cartella *Scuola* con le sottocartelle *Italiano* e *Informatica*. Vuoi inviare tutti i materiali come un solo allegato: puoi creare il file *Scuola.zip*.
]

Lo ZIP contiene una *copia dei file e delle sottocartelle*. La cartella originale rimane al suo posto e puoi continuare a usarla.

Creare uno ZIP viene spesso indicato con il comando *Comprimi*. Il nome del comando può cambiare in base al programma utilizzato.

#diagramma("/assets/svg/compressione-zip.svg")

== Estrarre uno ZIP: ritrovare i file e le cartelle

*Estrarre uno ZIP* significa copiare i file e le cartelle che contiene in una cartella del computer. Per lavorare sui documenti ricevuti, prima estrai il contenuto e poi apri i file estratti.

#esempio-teoria[
  Da *Scuola.zip* ottieni la cartella *Scuola*, con le sottocartelle *Italiano* e *Informatica* e i loro file. Anche lo ZIP originale rimane disponibile.
]

#diagramma("/assets/svg/estrazione-zip.svg")

#da-ricordare[Lo ZIP è una copia dei materiali][
  Le modifiche alla cartella originale o ai file estratti non aggiornano automaticamente lo ZIP già creato. Per inviare i materiali aggiornati, crea un nuovo ZIP.

  Se vuoi che altre persone vedano le modifiche nel tempo, puoi invece condividere una cartella su Drive.
]

Prima di inviare uno ZIP via email, controlla che la sua dimensione non superi il limite degli allegati.
