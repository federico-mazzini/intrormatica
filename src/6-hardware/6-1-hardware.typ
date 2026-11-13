#import "/styles/percorso-computer.typ": richiamo
#import "/styles/template.typ": grigio
#import "/styles/didattica.typ": esempio-teoria, da-ricordare

#set par(spacing: 0.8em)

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

Il computer *riceve dati*, li *elabora* seguendo un programma e *restituisce risultati*. Queste tre fasi si chiamano *input, elaborazione e output*. Durante il lavoro può anche leggere o salvare dati nella memoria.

#foto("schema-lavoro", altezza: 29mm, didascalia: [Input, elaborazione (_process_), output e archiviazione (_storage_).])

- *Input.* Il computer riceve dati dall’esterno, ad esempio da tastiera, mouse o sensori.
- *Elaborazione.* Il processore esegue le istruzioni del programma e lavora sui dati ricevuti.
- *Output.* Il computer restituisce un risultato, per esempio mostrandolo sullo schermo, stampandolo su un foglio o salvandolo su un dispositivo esterno.

== L’idea di base

L’*architettura di Von Neumann* è un modello che aiuta a capire come è organizzato un computer. La sua idea centrale è conservare nella *stessa memoria* sia i *dati* da elaborare sia le *istruzioni* dei programmi.

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
    Il *case* è il contenitore dei componenti interni di un computer. Li sostiene e li protegge da urti e polvere. Le aperture lasciano passare l’aria e permettono di raggiungere le porte a cui si collegano i dispositivi esterni.

    Nei portatili e negli smartphone il contenitore viene spesso chiamato *scocca*. La sua forma e i suoi materiali contribuiscono alla protezione, alla dispersione del calore e all’aspetto del dispositivo.
  ],
  foto("case", altezza: 65mm, didascalia: [Il case di un computer fisso.]),
)

== La scheda madre

La *scheda madre* è la scheda principale del computer. Ospita o collega componenti come processore, RAM e porte. Le *piste di rame* sulla sua superficie permettono ai componenti di scambiarsi segnali. Forma e dimensioni cambiano a seconda del dispositivo.

#galleria(
  foto("scheda-madre", altezza: 58mm, didascalia: [Una scheda madre per computer fisso.]),
  foto("scheda-smartphone", altezza: 58mm, didascalia: [La scheda di uno smartphone, estratta dalla scocca.]),
)

#pagebreak()

= Le periferiche

== Periferiche di input

Una *periferica* è un dispositivo che permette al computer di scambiare dati con l’esterno. Le periferiche di *input*, cioè di ingresso, inviano dati e comandi al computer. La tastiera invia i caratteri digitati; il microfono acquisisce i suoni.

#galleria(
  foto("tastiera", didascalia: [Tastiera]),
  foto("scanner", didascalia: [Scanner]),
  foto("microfono", didascalia: [Microfono]),
  foto("controller", didascalia: [Controller]),
)

== Periferiche di output

Le periferiche di *output*, cioè di uscita, rendono disponibili i risultati dell’elaborazione. Il monitor mostra immagini e testi, la stampante li riporta su carta, le cuffie e gli altoparlanti riproducono i suoni.

#galleria(
  foto("monitor", didascalia: [Monitor]),
  foto("stampante", didascalia: [Stampante]),
  foto("cuffie", didascalia: [Cuffie]),
  foto("altoparlanti", didascalia: [Altoparlanti]),
)

== Periferiche di input e output

Alcune periferiche sono sia di *input* sia di *output*: i dati possono viaggiare in entrambe le direzioni.

#esempio-teoria(titolo: [Esempi di input e output])[
  Il *touchscreen* mostra immagini (output) e rileva il tocco (input). Una *chiavetta USB* permette di leggere e salvare dati. Un *router* invia e riceve dati attraverso la rete.
]

#galleria(
  foto("touchscreen", didascalia: [Touchscreen]),
  foto("chiavetta", didascalia: [Chiavetta USB]),
  foto("router", didascalia: [Router]),
)

#pagebreak()

= Porte e altri componenti

== Interfacce e porte esterne

Le *porte* sono i connettori a cui colleghiamo cavi, periferiche e altri dispositivi. Per comunicare, però, non basta un collegamento fisico: i dispositivi devono anche seguire regole comuni, chiamate *protocolli*. L’*interfaccia* comprende le caratteristiche del collegamento e della comunicazione.

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

*GPU e scheda grafica.* La *GPU* è un processore specializzato nell’elaborazione grafica. Può essere integrata nello stesso chip della CPU oppure trovarsi su una *scheda grafica dedicata*, usata per esempio per la grafica 3D.

*Alimentazione.* L’alimentatore fornisce ai componenti l’energia elettrica necessaria. Un portatile può funzionare anche grazie alla batteria.

*Raffreddamento.* Allontana il calore prodotto dai componenti. Può usare dissipatori e ventole oppure un circuito a liquido. Se il calore non viene disperso, il computer può surriscaldarsi e funzionare male.

*Schede aggiuntive.* Si inseriscono negli *slot*, appositi connettori della scheda madre, per aggiungere funzioni come audio, Wi-Fi o Ethernet.

#pagebreak()

= La CPU

La *CPU* (_Central Processing Unit_), chiamata anche *processore*, esegue le istruzioni dei programmi ed elabora i dati. Interviene nelle attività del computer, dall’apertura di un documento alla riproduzione di un video.

== I transistor

#grid(columns: (1.85fr, 1fr), column-gutter: 6mm,
  [
    Una CPU moderna contiene miliardi di *transistor*. Possiamo immaginarli come minuscoli interruttori elettronici: i circuiti formati dai transistor permettono di rappresentare ed elaborare i valori binari *0 e 1*.

    Negli anni Cinquanta un transistor poteva avere dimensioni dell’ordine del centimetro.
  ],
  foto("processore", altezza: 40mm, didascalia: [Un processore visto sopra e sotto.]),
)

#esempio-teoria(titolo: [Esempio: le dimensioni dei transistor])[
  Un *nanometro (nm)* è un miliardesimo di metro. Per immaginare questa scala, consideriamo un capello spesso circa *0,06 mm*: nel suo spessore entrerebbero *20.000* segmenti da *3 nm*.
]

== Frequenza di clock

Il *clock* scandisce il lavoro della CPU attraverso cicli regolari. La sua *frequenza* indica quanti cicli avvengono in un secondo e si misura in *hertz (Hz)*. *1 GHz* significa *un miliardo di cicli al secondo*.

Un ciclo non coincide necessariamente con un’istruzione completa. Una frequenza più alta può velocizzare il lavoro, ma le prestazioni dipendono anche dalle caratteristiche del processore e dal programma eseguito.

Mentre usi un’app, il computer può anche aggiornare lo schermo, gestire la tastiera, mantenere la connessione e ricevere notifiche: deve quindi coordinare molte attività.

== I core

#grid(columns: (1.2fr, 1fr), column-gutter: 6mm,
  [
    Un *core* è un’unità della CPU capace di eseguire istruzioni. Più core permettono di distribuire il lavoro e svolgere più attività in parallelo. Le sigle *dual-core*, *quad-core* e *octa-core* indicano rispettivamente *2, 4 e 8 core*.

    Alcune CPU combinano core ad alte prestazioni, per lavori come la grafica 3D e il montaggio video, e core che consumano meno energia, adatti alle attività più leggere.
  ],
  foto("apple-a15", altezza: 39mm, didascalia: [Nel chip A15 i sei core della CPU sono suddivisi in due per le prestazioni e quattro per l’efficienza.]),
)

#pagebreak()

= Le memorie e la RAM

== Memoria centrale e memoria secondaria

La *memoria centrale*, in particolare la *RAM*, contiene i dati e le istruzioni che servono durante il lavoro. È come un *piano di lavoro*: permette un accesso rapido ai materiali in uso, ma ha uno spazio limitato.

La *memoria secondaria*, come un SSD o un HDD, conserva file, programmi e sistema operativo anche a computer spento. È come un *magazzino*: offre generalmente più spazio della RAM, ma l’accesso ai dati è più lento.

== Capacità e velocità

La *capacità* indica quanti dati può contenere una memoria. Si misura in *byte* e nei suoi multipli, come GB e TB.

La *velocità di trasferimento* indica quanti dati si possono leggere o scrivere in un secondo. Si misura in *byte al secondo*, per esempio MB/s o GB/s. La velocità di lettura (_read_) può essere diversa da quella di scrittura (_write_).

La tabella riprende gli esempi delle slide: sono valori indicativi, che cambiano a seconda del dispositivo e del collegamento.

#table(
  columns: (1.45fr, 1fr, 1fr),
  table.header([Memoria], [Velocità indicativa], [Capacità di esempio]),
  [RAM], [20–30 GB/s], [2–64 GB],
  [SSD], [1–7 GB/s], [128 GB–2 TB],
  [HDD], [100–200 MB/s], [500 GB–10 TB],
)

== La RAM in uso

La *RAM* è veloce ma *volatile*: il suo contenuto si perde quando viene tolta l’alimentazione. Per conservare un documento occorre quindi salvarlo nella memoria secondaria.

#esempio-teoria[
  Mentre scrivi con Word, il computer usa la RAM per il programma e il testo su cui lavori. Quando *salvi*, registra il documento nella memoria secondaria: potrai ritrovarlo anche dopo aver spento il computer.
]

#foto("ram", altezza: 45mm, didascalia: [Un modulo di memoria RAM.])

#pagebreak()

= HDD, SSD, cache e ROM

== La memoria secondaria

#grid(columns: (1.15fr, 1fr), column-gutter: 7mm,
  [
    Gli *HDD* (_Hard Disk Drive_) registrano i dati su dischi magnetici che ruotano. Le testine leggono e scrivono i dati. Hanno parti meccaniche mobili e offrono molto spazio a costo contenuto; rispetto agli SSD sono generalmente più lenti, rumorosi e sensibili agli urti.

    Gli *SSD* (_Solid State Drive_) conservano i dati in memorie elettroniche, senza parti mobili. Sono generalmente più veloci e silenziosi degli HDD. Anche smartphone, tablet e smartwatch usano memorie elettroniche che mantengono i dati allo spegnimento.
  ],
  foto("hdd", altezza: 58mm, didascalia: [All’interno di un HDD, la testina si sposta sopra il disco magnetico.]),
)

== La cache

#grid(columns: (1.35fr, 1fr), column-gutter: 7mm,
  [
    La *cache* è una memoria molto veloce, integrata nella CPU o vicina a essa. Conserva copie di dati e istruzioni che il processore potrebbe usare di nuovo. È molto più piccola della RAM: la sua capacità si misura solitamente in kilobyte o megabyte.

    Se il dato è già nella cache, la CPU può ottenerlo rapidamente. Altrimenti lo recupera dalla RAM e può conservarne una copia nella cache per gli usi successivi.
  ],
  foto("cache", altezza: 49mm, didascalia: [Nello schema, i livelli di cache L1 e L2 sono più vicini alla CPU rispetto alla RAM.]),
)

== La ROM e l’avvio

La *ROM* (_Read Only Memory_) è una memoria *non volatile*, destinata alla lettura di istruzioni già registrate. Può contenere istruzioni fondamentali per l’avvio o il funzionamento di un dispositivo.

Nei computer moderni il *firmware* di avvio è spesso conservato in una memoria *flash*. Anche questa mantiene i dati a computer spento, ma permette di aggiornare il firmware.

#pagebreak()

= L’attività dei pancake

Questa attività aiuta a capire perché il computer usa memorie diverse. Preparerai la stessa ricetta in due situazioni: prima con ingredienti e strumenti sparsi nella classe, poi con tutto a portata di mano sul piano di lavoro. Cambierà il tempo necessario per recuperare l’occorrente.

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

*Prima esecuzione: materiali lontani.* Gli ingredienti e gli strumenti sono sparsi nella classe. Ogni volta che serve qualcosa, devi andare a prenderlo e interrompere la preparazione.

*Seconda esecuzione: materiali a portata di mano.* Gli ingredienti e gli strumenti sono sul piano di lavoro. Puoi prenderli rapidamente e proseguire con meno interruzioni.

#da-ricordare[Il piano di lavoro e il magazzino][
  La ricetta rappresenta il programma. Il piano di lavoro è come la RAM: contiene ciò che serve durante l’attività. Il magazzino è come la memoria secondaria: conserva i materiali anche quando non li stiamo usando. Portarli sul piano di lavoro rende più rapido il loro utilizzo.
]
