#import "/styles/percorso-computer.typ": richiamo
#import "/styles/template.typ": grigio
#import "/styles/didattica.typ": esempio-teoria

#set par(spacing: 1em)

#let foto(nome, altezza: 33mm, didascalia: none) = block(width: 100%, breakable: false)[
  #align(center, image(
    "/assets/immagini/6-hardware/" + nome + ".jpg",
    width: 100%, height: altezza, fit: "contain",
  ))
  #if didascalia != none [
    #block(width: 100%, above: 4pt)[
      #set par(justify: false)
      #align(center, text(size: 9pt, fill: grigio, didascalia))
    ]
  ]
]
#let galleria(..figure) = {
  let immagini = figure.pos()
  grid(
    columns: (1fr,) * immagini.len(),
    column-gutter: 5mm,
    ..immagini,
  )
}

= Architettura di Von Neumann

== Il lavoro di un computer

Possiamo schematizzare il lavoro di un computer in tre fasi: *input, elaborazione e output*. Durante il lavoro il computer può anche leggere e salvare dati.

#foto("schema-lavoro", altezza: 29mm, didascalia: [Input, elaborazione (_process_), output e archiviazione (_storage_).])

- *Input.* Il computer riceve dati dall’esterno, ad esempio da tastiera, mouse o sensori.
- *Elaborazione.* Il processore elabora i dati seguendo le istruzioni memorizzate, cioè il programma.
- *Output.* Il computer restituisce un risultato, per esempio mostrandolo sullo schermo, stampandolo su un foglio o salvandolo su un dispositivo esterno.

== L’idea di base

L’*architettura di Von Neumann* è il modello alla base dei computer moderni. L’idea è quella di avere *un’unica memoria* in cui vengono mantenuti sia i *dati* sia le *istruzioni* dei programmi.

#grid(columns: (1.1fr, 1fr), column-gutter: 7mm,
  [
    - La *CPU* esegue le istruzioni.
    - La *memoria centrale* contiene dati e istruzioni in uso.
    - I dispositivi di *input e output* scambiano informazioni con l’esterno.
    - I *bus* sono i collegamenti attraverso cui comunicano i componenti.
  ],
  foto("architettura", altezza: 49mm, didascalia: [CPU, memoria centrale (_memory unit_) e dispositivi di ingresso e uscita.]),
)

#pagebreak()

= Case e scheda madre

== Il case

#grid(columns: (1.65fr, 1fr), column-gutter: 7mm,
  [
    Il *case* è il contenitore che ospita e protegge i componenti interni di un computer. Fa da *struttura*, tiene insieme i componenti e li protegge da polvere e urti. Lascia accessibili le porte per collegare dispositivi di input e output. La forma e i materiali contribuiscono anche all’estetica del computer.

    Nei portatili e negli smartphone si parla spesso di *scocca*. Oltre a proteggere e sostenere i componenti, la scocca può contribuire a disperdere il calore.
  ],
  foto("case", altezza: 65mm, didascalia: [Il case di un computer fisso.]),
)

== La scheda madre

La *scheda madre* è il cuore di ogni computer. È una piastra che raccoglie i componenti principali e li collega tra loro mediante *piste di rame* stampate. A seconda del dispositivo può avere dimensioni molto diverse.

#galleria(
  foto("scheda-madre", altezza: 58mm, didascalia: [Una scheda madre per computer fisso.]),
  foto("scheda-smartphone", altezza: 58mm, didascalia: [La scheda di uno smartphone, estratta dalla scocca.]),
)

#pagebreak()

= Le periferiche

== Periferiche di input

Una periferica di *input* permette al computer di *ricevere dati e comandi dall’esterno*. Senza input, il computer sarebbe come una scatola chiusa che non riceve informazioni dall’ambiente.

#galleria(
  foto("tastiera", didascalia: [Tastiera]),
  foto("scanner", didascalia: [Scanner]),
  foto("microfono", didascalia: [Microfono]),
  foto("controller", didascalia: [Controller]),
)

== Periferiche di output

Una periferica di *output* permette al computer di *mostrare risultati o comunicarli all’esterno*. Senza output, i risultati non sarebbero visibili o utilizzabili.

#galleria(
  foto("monitor", didascalia: [Monitor]),
  foto("stampante", didascalia: [Stampante]),
  foto("cuffie", didascalia: [Cuffie]),
  foto("altoparlanti", didascalia: [Altoparlanti]),
)

== Periferiche di input e output

Una periferica di *input/output* ha una duplice funzione: permette di *ricevere e fornire dati*.

#esempio-teoria(titolo: [Esempi di input e output])[
  Un touchscreen mostra le immagini e rileva il tocco. Una chiavetta USB può essere letta e scritta. Un router invia e riceve dati attraverso la rete.
]

#galleria(
  foto("touchscreen", didascalia: [Touchscreen]),
  foto("chiavetta", didascalia: [Chiavetta USB]),
  foto("router", didascalia: [Router]),
)

#pagebreak()

= Porte e altri componenti

== Interfacce e porte esterne

Le interfacce e le porte esterne permettono al computer di comunicare con il mondo esterno, collegando periferiche, reti e dispositivi di archiviazione. Le *porte* sono i connettori fisici. Le *interfacce* comprendono le regole, chiamate *protocolli*, che permettono ai dispositivi di comunicare correttamente.

#foto("porte", altezza: 61mm, didascalia: [Forme e nomi dei connettori. La figura mostra anche porte usate su computer meno recenti.])

#table(
  columns: (1fr, 2.6fr),
  table.header([Porta], [Uso]),
  [USB (Type A e Type C)], [Tastiere, mouse, chiavette e, su molti dispositivi, alimentazione.],
  [HDMI], [Audio e video verso monitor e proiettori.],
  [Ethernet], [Collegamento a reti cablate.],
  [Jack audio], [Ingresso o uscita audio.],
  [Slot SD], [Lettura e scrittura di schede di memoria.],
)

All’esterno del computer troviamo anche pulsanti di accensione e LED che ne segnalano lo stato.

== Altri componenti

*GPU (scheda grafica).* È un processore dedicato all’elaborazione grafica. Può essere integrato nel processore o presente su una scheda dedicata, per esempio in un computer usato per la grafica 3D.

*Alimentazione.* Fornisce energia a tutti i componenti del computer. Un portatile può usare un alimentatore collegato alla rete elettrica oppure una batteria.

*Raffreddamento.* Mantiene CPU e GPU a temperature sicure. Può avvenire ad aria, con ventole e dissipatori, oppure a liquido. Un raffreddamento insufficiente può causare surriscaldamenti e malfunzionamenti.

*Schede aggiuntive.* Aggiungono funzioni come audio, Wi-Fi o Ethernet. Si collegano a slot appositi sulla scheda madre e permettono di personalizzare il PC in base alle esigenze.

#pagebreak()

= La CPU

La *CPU* (_Central Processing Unit_), o *processore*, è il «cervello» del computer. Esegue le istruzioni dei programmi e compie calcoli. Ogni azione, dall’apertura di un file alla riproduzione di un video, richiede l’esecuzione di istruzioni da parte della CPU.

== I transistor

#grid(columns: (1.85fr, 1fr), column-gutter: 6mm,
  [
    La CPU è composta da miliardi di *transistor*, piccoli interruttori elettronici che controllano il passaggio della corrente. I circuiti costruiti con questi interruttori rappresentano ed elaborano le informazioni binarie *0 e 1*.

    Negli anni Cinquanta un transistor poteva avere dimensioni dell’ordine del centimetro.
  ],
  foto("processore", altezza: 40mm, didascalia: [Un processore visto sopra e sotto.]),
)

#esempio-teoria(titolo: [Esempio: le dimensioni dei transistor])[
  Per immaginare la scala dei nanometri, prendiamo lo spessore di un capello, circa *0,06 mm*. In quella distanza entrerebbero *20.000* segmenti da *3 nm*.
]

== Frequenza di clock

La *frequenza di clock* indica quanti cicli scandiscono il lavoro della CPU in un secondo. Si misura in *hertz* (Hz). *1 GHz* corrisponde a *1.000.000.000 di cicli al secondo*. A parità di processore e di lavoro da svolgere, una frequenza più alta può velocizzare l’elaborazione.

Anche solo per eseguire un’app, il computer deve aggiornare lo schermo e nel frattempo gestire il tocco o la tastiera, mantenere la connessione a Internet, ricevere notifiche e aggiornare le app in background.

== I core

#grid(columns: (1.2fr, 1fr), column-gutter: 6mm,
  [
    Un *core* è un’unità di elaborazione all’interno della CPU. Con più core il processore può svolgere più attività in parallelo. Si parla di processori *dual-core* (2), *quad-core* (4) e *octa-core* (8).

    Alcuni processori hanno core più potenti per compiti pesanti, come grafica 3D e montaggio video, e core più efficienti per attività leggere, come ascoltare musica o aggiornare le app in background.
  ],
  foto("apple-a15", altezza: 39mm, didascalia: [Nel chip A15 i sei core della CPU sono suddivisi in due per le prestazioni e quattro per l’efficienza.]),
)

#pagebreak()

= Le memorie e la RAM

== Memoria centrale e memoria secondaria

La *memoria centrale* è una memoria veloce a supporto della CPU. Contiene i dati e i programmi in uso in quel momento. È il *piano di lavoro* del computer: accesso veloce, ma spazio limitato.

La *memoria secondaria* conserva dati, programmi e sistema operativo anche quando il computer è spento. È il *magazzino*: i dati rimangono disponibili fino alla loro eventuale cancellazione, con più spazio di deposito e un accesso più lento rispetto alla RAM.

== Capacità e velocità

La *capacità* indica quanti dati può contenere una memoria. Si misura in *byte* e nei suoi multipli, come GB e TB.

La *velocità* indica quanto rapidamente si possono leggere o scrivere dati. Si distingue fra velocità di lettura (_read_) e di scrittura (_write_). Si misura in *byte al secondo* e nei suoi multipli, come MB/s e GB/s.

La tabella riporta esempi di capacità e velocità. I valori dipendono dal dispositivo.

#table(
  columns: (1.45fr, 1fr, 1fr),
  table.header([Memoria], [Velocità indicativa], [Capacità di esempio]),
  [RAM], [20–30 GB/s], [2–64 GB],
  [SSD], [1–7 GB/s], [128 GB–2 TB],
  [HDD], [100–200 MB/s], [500 GB–10 TB],
)

== La RAM in uso

La *RAM* ha tempi di accesso rapidi ed è *volatile*: perde il suo contenuto allo spegnimento.

#esempio-teoria[
  Se stai scrivendo un testo con Word, il programma e il testo su cui lavori si trovano temporaneamente nella RAM. Con il *salvataggio*, il file viene scritto nella memoria secondaria, che è non volatile.
]

#foto("ram", altezza: 45mm, didascalia: [Un modulo di memoria RAM.])

#pagebreak()

= HDD, SSD, cache e ROM

== La memoria secondaria

#grid(columns: (1.15fr, 1fr), column-gutter: 7mm,
  [
    Gli *HDD* (_Hard Disk Drive_) usano dischi magnetici rotanti e parti meccaniche mobili, come le testine di lettura e scrittura. Offrono grande capacità a costo contenuto e sono generalmente più lenti, più rumorosi e più sensibili agli urti rispetto agli SSD.

    Gli *SSD* (_Solid State Drive_) usano memorie elettroniche senza parti mobili. Sono in genere più compatti, veloci e silenziosi. Anche smartphone, tablet e smartwatch usano memorie elettroniche non volatili.
  ],
  foto("hdd", altezza: 58mm, didascalia: [All’interno di un HDD, la testina si sposta sopra il disco magnetico.]),
)

== La cache

#grid(columns: (1.35fr, 1fr), column-gutter: 7mm,
  [
    La *cache* è una piccola memoria molto veloce, integrata nella CPU o vicina a essa. Contiene copie di dati e istruzioni che potrebbero servire di nuovo. Ha una capacità molto più limitata della RAM, nell’ordine dei kilobyte o megabyte.

    Quando serve un dato, la CPU controlla se è già in cache. Se manca, può recuperarlo dalla RAM e tenerne una copia in cache per un uso futuro.
  ],
  foto("cache", altezza: 49mm, didascalia: [Nello schema, i livelli di cache L1 e L2 sono più vicini alla CPU rispetto alla RAM.]),
)

== La ROM e l’avvio

La *ROM* (_Read Only Memory_) è una memoria *non volatile e in sola lettura*. Può contenere istruzioni fisse e fondamentali per l’avvio o per il funzionamento di un dispositivo. Nei computer moderni il programma che avvia la macchina è spesso conservato in una memoria *flash*, che mantiene i dati allo spegnimento e permette di aggiornare il programma.

#pagebreak()

= L’attività dei pancake

Immagina di preparare la stessa ricetta due volte. La prima volta ingredienti e strumenti sono sparsi nella classe. La seconda volta sono già sul piano di lavoro. La ricetta è la stessa, ma cambia quanto tempo passi a recuperare l’occorrente.

#galleria(
  foto("pancake", altezza: 60mm, didascalia: [Pancake pronti da servire.]),
  [
    == Ingredienti

    - 250 ml di latte
    - 200 g di farina 00
    - 65 g di zucchero
    - 1 uovo

    == Materiale

    Una ciotola, una padella e una frusta.
  ],
)

== Preparazione

+ Metti nella ciotola l’uovo insieme allo zucchero e mescola.
+ Aggiungi il latte e continua a mescolare.
+ Aggiungi la farina e mescola finché non ci sono più grumi.
+ Versa il composto in padella e cuoci per circa 4 minuti.

== Le due esecuzioni

*Solo memoria secondaria.* Gli strumenti e i materiali sono sparsi nella classe. Chi esegue la ricetta deve spostarsi per recuperare l’occorrente. La ricetta va in pausa durante la ricerca degli ingredienti e si accumulano attese.

*Con memoria centrale.* Gli strumenti e i materiali sono sul piano di lavoro. Chi esegue la ricetta non si sposta e può prendere l’occorrente con una mano. Il lavoro continua anche quando serve un nuovo ingrediente o strumento.

#richiamo[
  La ricetta rappresenta il *programma*. Gli ingredienti e gli strumenti che servono sono a portata di mano sul piano di lavoro, come *dati e istruzioni nella RAM*. Il magazzino rappresenta la *memoria secondaria*, dove si conserva quello che servirà anche dopo.
]
