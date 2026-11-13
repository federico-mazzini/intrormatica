#import "/styles/percorso-computer.typ": *
#import "/styles/template.typ": grigio
#import "/styles/didattica.typ": esempio-teoria, da-ricordare

// Immagini originali delle slide; proporzioni conservate, senza ritaglio.
#let foto(nome, altezza: 32mm, didascalia: none) = block(breakable: false, width: 100%)[
  #align(center)[#image("/assets/immagini/4-introduzione-computer/" + nome, width: 100%, height: altezza, fit: "contain")]
  #if didascalia != none [
    #block(above: 4pt)[#align(center)[#text(size: 9pt, fill: grigio)[#didascalia]]]
  ]
]
#let tipo(titolo, nome, body) = block(width: 100%, breakable: false, above: 12pt, below: 12pt)[
  #grid(columns: (35mm, 1fr), column-gutter: 6mm,
    foto(nome, altezza: 32mm),
    [#block(sticky: true, below: 5pt)[#text(weight: "bold")[#titolo]] #body],
  )
]

= I computer oggi

Quando pensiamo a un *computer*, immaginiamo spesso un dispositivo fisso sulla scrivania oppure un portatile. In realtà, i computer possono avere forme e dimensioni molto diverse.

Anche *smartphone, tablet e console* sono computer: ricevono dati, li elaborano seguendo le istruzioni dei programmi e producono risultati. Alcuni computer si possono indossare; altri sono inseriti dentro elettrodomestici, automobili e macchinari.

== Computer desktop e portatili

#tipo([Computer desktop], "desktop.jpg")[
  I *computer desktop*, o *computer fissi*, sono progettati per essere usati su una scrivania. Di solito si collegano a un monitor, a una tastiera e a un mouse. Le loro prestazioni dipendono dai componenti e dal lavoro da svolgere.
]

#tipo([Computer portatili], "portatile.jpg")[
  I *computer portatili*, chiamati anche *notebook* o *laptop*, riuniscono schermo, tastiera e componenti in un unico dispositivo facile da trasportare. La *batteria ricaricabile* permette di usarli anche senza collegarli a una presa elettrica.
]

== Smartphone e tablet

#tipo([Smartphone], "smartphone.jpg")[
  Gli *smartphone* sono telefoni cellulari che permettono anche di eseguire applicazioni. Attraverso lo *schermo touchscreen*, sensibile al tocco, possiamo navigare su Internet, scrivere messaggi e usare la posta elettronica.
]

#tipo([Tablet], "tablet.jpg")[
  I *tablet* hanno uno schermo touchscreen più grande di quello di uno smartphone. Permettono di leggere, guardare video, scrivere e usare applicazioni. Possono sostituire un portatile per alcune attività, a seconda dei programmi e degli accessori disponibili.
]

#pagebreak()

= Altre tipologie di computer

#tipo([Console], "console.jpg")[
  Le *console* sono computer progettati soprattutto per i *videogiochi*. Alcune si collegano a un televisore, altre hanno uno schermo integrato. Il giocatore usa un *controller* per inviare i comandi al gioco.
]

#tipo([Server], "server.jpg")[
  I *server* sono computer che forniscono *dati e servizi* ad altri dispositivi attraverso una rete. Quando visitiamo un sito web o guardiamo un film in streaming, il nostro dispositivo riceve i dati da uno o più server.
]

#tipo([Dispositivi wearable], "smartwatch.jpg")[
  I *dispositivi wearable*, cioè *indossabili*, comprendono smartwatch, auricolari intelligenti e smartglasses. A seconda del dispositivo, i sensori possono misurare il battito cardiaco, raccogliere dati sul sonno o rilevare il rumore dell’ambiente.
]

#tipo([Sistemi embedded], "embedded.jpg")[
  I *sistemi embedded* sono computer *incorporati* in un dispositivo o in un macchinario. Svolgono funzioni precise, come controllare il lavaggio in una lavatrice o la cottura in un forno a microonde.
]

#da-ricordare[Forme diverse, lo stesso principio][
  Un computer può essere fisso, portatile, indossabile o incorporato in un altro dispositivo. Cambiano la forma e lo scopo, ma tutti elaborano dati seguendo le istruzioni dei programmi.
]

#pagebreak()

= I sistemi embedded

Un *sistema embedded* controlla una o più funzioni del dispositivo in cui è inserito. Il termine inglese _embedded_ significa *«incorporato»*.

Un computer da scrivania può essere usato per attività molto diverse, come scrivere, giocare e navigare online. Un sistema embedded è invece progettato per *compiti specifici*: nella lavatrice, per esempio, controlla le fasi del lavaggio.

#foto("robot.jpg", altezza: 52mm, didascalia: [Robot industriali nelle catene di montaggio: un esempio di sistemi progettati per funzioni specifiche.])

#grid(columns: (1.25fr, 1fr), column-gutter: 8mm,
  esempio-teoria(titolo: [Esempi nell’uso quotidiano])[
    - *Elettrodomestici:* lavatrici, forni a microonde e frigoriferi intelligenti.
    - *Automobili:* controllo dei freni (*ABS*), airbag e gestione del motore.
    - *Dispositivi medici:* pacemaker e macchinari per ospedali.
    - *Robotica:* robot industriali nelle catene di montaggio.
  ],
  foto("pacemaker.jpg", altezza: 65mm, didascalia: [Il pacemaker è un esempio di dispositivo medico con un sistema incorporato.]),
)

#pagebreak()

= I server

Un *server* mette dati e servizi a disposizione di altri dispositivi collegati a una rete, come Internet. Il suo compito è *ricevere richieste e fornire risposte*.

Quando apri una pagina web, il tuo dispositivo chiede al server i dati necessari per mostrarla. Per rendere i servizi disponibili in ogni momento, molti server rimangono accesi *24 ore al giorno, 7 giorni su 7*.

#foto("server-ibm.jpg", altezza: 55mm, didascalia: [Sistemi server: computer che mettono dati e servizi a disposizione di altri computer.])

#esempio-teoria(titolo: [Esempi nell’uso quotidiano])[
  *Streaming e social media.* I server conservano video e immagini e inviano al nostro dispositivo i dati necessari per visualizzarli. Non occorre avere già salvato sul dispositivo una copia completa del contenuto.

*Gaming online.* Nei giochi multiplayer, i server coordinano posizioni, punteggi e azioni dei giocatori. In questo modo i partecipanti possono seguire la stessa partita.

*Cloud storage: Google Drive e iCloud.* Salvare un file nel cloud significa conservarlo sui server del servizio, per esempio Google Drive, e ritrovarlo accedendo al proprio account.

*Web ed email.* I *web server* forniscono le pagine dei siti. I *server di posta* gestiscono l’invio e la ricezione delle email.
]

#pagebreak()

= Hardware e software

== Hardware: le componenti fisiche

L’*hardware (HW)* è l’insieme delle *componenti fisiche* del computer: le parti che possiamo toccare. Ne fanno parte sia i componenti interni, come la scheda madre, sia i dispositivi collegati, come tastiera e monitor.

#grid(columns: (1fr, 1fr), column-gutter: 8mm,
  foto("scheda-madre.jpg", altezza: 40mm, didascalia: [Una scheda madre.]),
  foto("smartphone-interno.jpg", altezza: 40mm, didascalia: [Le componenti fisiche all’interno di uno smartphone.]),
)

== Software: i programmi

Il *software (SW)* è l’insieme dei *programmi* che permettono al computer di funzionare e svolgere attività. I programmi sono conservati nella memoria del dispositivo: le loro istruzioni vengono eseguite dai componenti hardware.

#esempio-teoria[
  Windows e Android sono sistemi operativi. Anche le applicazioni con cui scriviamo, giochiamo o usiamo i servizi online, come Google Drive, fanno parte del software.
]

#grid(columns: (1.7fr, 1fr, 0.9fr), column-gutter: 8mm,
  foto("windows.jpg", altezza: 18mm, didascalia: [Windows.]),
  foto("android.jpg", altezza: 18mm, didascalia: [Android.]),
  foto("drive.jpg", altezza: 18mm, didascalia: [Google Drive.]),
)

#da-ricordare[Hardware e software lavorano insieme][
  L’hardware è la parte fisica del computer. Il software fornisce le istruzioni che l’hardware esegue: per svolgere un’attività servono entrambi.
]
