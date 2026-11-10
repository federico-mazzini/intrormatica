#import "/styles/percorso-computer.typ": *

= Un’architettura di componenti collegati

#richiamo[

*Obiettivo:* riconoscere i principali componenti di un computer e spiegare *a che cosa servono*, non soltanto come si chiamano.

Ogni componente svolge un compito: alcuni elaborano le informazioni, altri le conservano, altri permettono di comunicare con l'esterno.

]

== Dal funzionamento ai componenti

Il lavoro di un computer si può descrivere come *input → elaborazione → output*, con la possibilità di memorizzare i dati.

Nell'*architettura di Von Neumann*, un modello fondamentale per comprendere i computer, *dati e istruzioni dei programmi sono conservati nella memoria*. La CPU esegue istruzioni, comunica con la memoria e scambia informazioni attraverso collegamenti chiamati *bus*. Le periferiche consentono l'ingresso e l'uscita dei dati.

#table(columns: (1fr, 1fr),
  table.header([Elemento], [Ruolo principale]),
  [CPU], [Esegue le istruzioni],
  [RAM], [Contiene temporaneamente dati e programmi in uso],
  [Memoria secondaria], [Conserva i dati nel tempo],
  [Periferiche], [Ricevono o restituiscono informazioni],
  [Bus], [Trasportano informazioni tra componenti],
)

Il semplice schema input/elaborazione/output descrive il lavoro generale del computer; *non rappresenta da solo l'intera architettura di Von Neumann*.

#schema("/assets/svg/hardware-software/von-neumann.svg")

== Struttura del computer

== Case e scheda madre

Il *case* è l'involucro che contiene e protegge molti componenti del computer. Nei portatili e nei dispositivi mobili si parla spesso di *scocca*.

La *scheda madre* è la piastra elettronica principale: permette a CPU, memoria e altri componenti di essere collegati e comunicare.

== CPU, RAM e unità di archiviazione

La *CPU* (_processore_) esegue le istruzioni dei programmi, compiendo operazioni logiche, calcoli e attività di controllo.

La *RAM* è veloce ma volatile: contiene dati e programmi mentre il computer funziona. L'*SSD* o l'*HDD* mantiene dati e programmi anche dopo lo spegnimento.

#richiamo[

*Esempio:* quando si apre una fotografia, i suoi dati possono essere recuperati dall'SSD, utilizzati nella RAM ed elaborati con il contributo di CPU e GPU, prima di essere mostrati sullo schermo.

]

== Altri componenti

- *GPU:* processore specializzato anche nella produzione ed elaborazione della grafica; può essere integrato o dedicato.
- *Alimentatore e batteria:* forniscono energia al dispositivo.
- *Raffreddamento:* dissipatori e ventole aiutano a mantenere temperature corrette.
- *Schede aggiuntive:* possono offrire funzioni supplementari, come collegamenti di rete o audio.

== Le periferiche

Una *periferica* permette al computer di ricevere informazioni o di restituire risultati.

#table(columns: (1fr, 1fr, 1fr),
  table.header([Tipo], [Funzione], [Esempi]),
  [*Input*], [Fornisce dati o comandi al computer], [Tastiera, mouse, scanner, microfono],
  [*Output*], [Restituisce informazioni], [Monitor, stampante, altoparlanti],
  [*Input/output*], [Scambia dati in entrambe le direzioni], [Touchscreen, chiavetta USB, scheda di rete],
)

*Esempio:* il touchscreen è output quando mostra un'immagine e input quando rileva il tocco. Una chiavetta USB può essere letta e scritta.

== Collegamenti e porte

Le *porte* sono punti di collegamento fisici. Le *interfacce* comprendono anche regole e modalità di comunicazione.

- *USB-A / USB-C:* dispositivi esterni e, in alcuni casi, alimentazione o video.
- *HDMI:* trasferisce audio e video a monitor o proiettori.
- *Ethernet:* collega il dispositivo a una rete cablata.
- *Jack audio:* collega dispositivi audio.
- *Lettore SD:* permette di utilizzare schede di memoria.

La forma di una porta non garantisce da sola tutte le funzioni: due connessioni USB-C possono avere capacità differenti.

#pagebreak()

= La CPU esegue le istruzioni

#richiamo[

*La CPU* (_Central Processing Unit_), detta anche *processore*, esegue le istruzioni dei programmi. Per questo viene spesso chiamata il “cervello” del computer, anche se non ragiona come una persona.

*Obiettivo:* comprendere transistor, frequenza di clock, core e loro relazione con le prestazioni.

]

== Il lavoro della CPU

Quando si apre un'applicazione, si scrive una frase o si esegue un calcolo, il processore svolge moltissime operazioni. Non effettua soltanto calcoli: esegue anche *confronti, operazioni logiche e istruzioni di controllo*.

La CPU lavora con dati e istruzioni che devono essere disponibili nella memoria. Per svolgere i suoi compiti collabora con gli altri componenti, come RAM, memorie di archiviazione e GPU.

== I transistor: piccolissimi interruttori

Una CPU moderna contiene *miliardi di transistor*. Sono minuscoli dispositivi elettronici usati per costruire i circuiti del processore. Grazie ai transistor è possibile rappresentare e manipolare informazioni binarie, basate su *0 e 1*.

Nel tempo i transistor sono diventati sempre più piccoli. I produttori indicano le generazioni tecnologiche con sigle come *3 nm* o *2 nm*: queste sigle *non indicano necessariamente la dimensione fisica esatta* di ogni transistor.

#richiamo[

*Esempio:* quando viene premuto un tasto, il computer deve trasformare quel comando in segnali e operazioni elettroniche. Tutto avviene attraverso circuiti composti da moltissimi transistor.

]

== La frequenza di clock

Il *clock* è un segnale periodico che scandisce il funzionamento di molti circuiti della CPU. La sua *frequenza* indica quanti cicli si verificano in un secondo.

L'unità di misura è l'*hertz (Hz)*. Un processore che lavora a *1 GHz* ha un segnale di clock da *un miliardo di cicli al secondo*.

*Attenzione:* un ciclo di clock non equivale necessariamente a un'istruzione. Avere più GHz *non significa automaticamente* che un processore sia più veloce di un altro: contano anche l'architettura, il lavoro svolto per ciclo e altri fattori.

== I core: più unità di elaborazione

Un *core* è un'unità di elaborazione all'interno della CPU. Un processore con più core può eseguire più attività *in parallelo*.

- *Dual-core:* 2 core.
- *Quad-core:* 4 core.
- *Octa-core:* 8 core.

In molte CPU si trovano core con caratteristiche diverse: alcuni privilegiano le *prestazioni*, altri il *risparmio energetico*. Questa scelta è utile in particolare nei dispositivi con batteria.

*Esempio:* durante una videolezione, il computer può contemporaneamente visualizzare immagini, riprodurre audio, gestire la connessione e ricevere comandi dalla tastiera.

== I fattori che determinano le prestazioni

#table(columns: (1fr, 1fr, 1fr),
  table.header([Caratteristica], [Che cosa indica], [Che cosa non permette di concludere da sola]),
  [Frequenza di clock], [Ritmo dei cicli], [Quale CPU sia più veloce in assoluto],
  [Numero di core], [Unità di elaborazione disponibili], [Quanto vada veloce ogni singolo compito],
  [Architettura], [Organizzazione e capacità del processore], [Non si descrive con un solo numero],
)

Anche RAM, memoria secondaria, raffreddamento e software influenzano l'esperienza complessiva.

Un modo semplificato di descrivere il lavoro della CPU è: recuperare un’istruzione dalla memoria, interpretarla ed eseguire l’operazione prevista. Il processo si ripete continuamente. Le CPU reali sovrappongono e organizzano molte operazioni, ma questo ciclo aiuta a capire perché servano sia istruzioni sia dati disponibili.

I core offrono più unità di elaborazione, ma un programma deve poter distribuire il proprio lavoro per sfruttarle efficacemente. Anche una CPU rapida può attendere dati dalla memoria o dall’archiviazione. Un solo numero su una scheda tecnica non descrive quindi il comportamento dell’intero computer.

#pagebreak()

= Memorie per compiti diversi

== La funzione della memoria

Il computer deve conservare *dati e istruzioni*. Non esiste una memoria adatta a tutto: alcune sono molto rapide ma piccole, altre hanno più spazio ma sono più lente.

Due caratteristiche fondamentali sono:

- *Capacità:* quantità di dati contenuti, misurata in byte e multipli.
- *Velocità:* rapidità con cui la memoria permette di leggere e scrivere dati.

Una memoria è *volatile* se perde il contenuto quando non è alimentata; è *non volatile* se lo mantiene.

== Memoria centrale e memoria secondaria

#table(columns: (1fr, 1fr, 1fr),
  table.header([], [RAM — memoria centrale], [SSD/HDD — memoria secondaria]),
  [Compito], [Contenere dati e programmi in uso], [Conservare file e programmi nel tempo],
  [Spegnimento], [Il contenuto ordinariamente si perde], [I dati rimangono],
  [Velocità], [Generalmente molto elevata], [Generalmente inferiore alla RAM],
  [Analogia], [Piano di lavoro], [Magazzino],
)

#richiamo[

*Esempio: un documento.* Mentre si scrive con un programma, dati e istruzioni vengono utilizzati nella RAM. Quando il documento viene salvato, i suoi dati sono scritti anche nell'archiviazione permanente. Se il computer si spegne senza salvare, le modifiche non ancora registrate possono andare perse.

]

== HDD e SSD: due modi diversi di conservare dati

L'*HDD* (_Hard Disk Drive_) conserva i dati su dischi magnetici che ruotano e usa parti meccaniche per leggerli e scriverli. Può offrire molta capacità a costo contenuto, ma generalmente è più lento di un SSD.

L'*SSD* (_Solid State Drive_) utilizza memoria elettronica senza parti meccaniche mobili: in genere è più rapido, silenzioso e resistente agli urti rispetto a un HDD.

Anche smartphone e tablet utilizzano memorie elettroniche non volatili per conservare i dati, ma non necessariamente unità SSD con la stessa forma di quelle dei computer.

== Le memorie più vicine alla CPU

== Cache

La *cache* è una memoria molto veloce, di capacità ridotta, spesso integrata nella CPU. Contiene copie di dati e istruzioni che potrebbero servire nuovamente, riducendo alcuni tempi di attesa. Come la RAM, la cache è normalmente volatile.

*Esempio:* invece di recuperare ogni volta gli stessi dati dalla RAM, il processore può trovarli nella cache.

== ROM e firmware

La *ROM* (_Read Only Memory_) è una memoria tradizionalmente destinata a conservare istruzioni non volatili. Nei computer moderni, i programmi fondamentali per l'avvio (*firmware*, per esempio UEFI) sono spesso conservati in memoria *flash aggiornabile*. Non è quindi corretto affermare che tutto ciò che riguarda l'avvio non possa mai essere modificato.

== Collegare i ruoli delle memorie

Capacità e velocità descrivono aspetti diversi: la quantità di dati che si possono contenere e la rapidità con cui si può accedere ai dati. Avere molto spazio di archiviazione non sostituisce una RAM sufficiente per le attività aperte. Non si sommano 8 GB di RAM e 512 GB di SSD per ottenere un’unica memoria da 520 GB, perché le due risorse hanno ruoli diversi.

Immagina la RAM come un piano di lavoro e l’SSD come un magazzino. Per lavorare porti sul piano ciò che serve; per conservarlo lo riponi nel magazzino. La cache somiglia a un piccolo spazio ancora più vicino a chi lavora, dove tenere copie di elementi che potrebbero servire di nuovo. È un’analogia dei ruoli: la memoria non sposta fogli reali.

Salvare significa registrare i dati nell’archiviazione. Il salvataggio automatico può aiutare, ma una modifica presente solo nella memoria volatile può andare persa se manca alimentazione. Le unità di misura e le conversioni sono trattate nella dispensa su bit e byte: qui basta distinguere la capacità in GB dalla velocità espressa, per esempio, in MB/s.

#schema("/assets/svg/hardware-software/memorie.svg")

#pagebreak()

= Scegliere in base alle esigenze

== Esigenze diverse

Le caratteristiche da valutare cambiano in base all’utilizzo. Consideriamo tre esempi:

- *Caso A — Studio.* Serve un dispositivo da portare a scuola, per scrivere documenti, navigare sul Web e seguire videolezioni.
- *Caso B — Creatività.* Serve un computer per montare video e utilizzare programmi di grafica.
- *Caso C — Budget limitato.* Serve un computer economico per applicazioni leggere e per conservare documenti.

== Tre computer da confrontare

Le configurazioni sono *inventate a scopo illustrativo* e non rappresentano offerte commerciali.

#table(columns: (1fr, 1fr, 1fr, 1fr),
  table.header([Caratteristica], [Computer 1], [Computer 2], [Computer 3]),
  [Tipologia], [Portatile leggero], [Desktop], [Portatile economico],
  [CPU], [6 core], [12 core], [4 core],
  [RAM], [16 GB], [32 GB], [8 GB],
  [Memoria secondaria], [SSD 512 GB], [SSD 1 TB], [SSD 256 GB],
  [Scheda grafica], [Integrata], [Dedicata], [Integrata],
  [Prezzo], [850 €], [1.500 €], [450 €],
)

Il numero di core non indica da solo quanto sia veloce una CPU. Per una scelta reale sarebbero utili anche informazioni su modello del processore, batteria, peso, schermo e possibilità di aggiornamento.

Una scelta motivata parte dalle attività, non dal prezzo più alto. Per lo studio contano trasporto, autonomia e applicazioni richieste; per il montaggio video possono pesare maggiormente RAM, GPU e archiviazione; con un budget limitato bisogna individuare le funzioni davvero necessarie.

Le tre configurazioni sono didattiche e inventate: non costituiscono consigli d’acquisto. Il confronto deve tenere conto sia dei dati disponibili sia delle informazioni mancanti. Il numero di core non permette di confrontare da solo le CPU; servirebbero modello e caratteristiche. Peso, batteria, schermo e aggiornabilità possono modificare una scelta apparentemente ovvia.
