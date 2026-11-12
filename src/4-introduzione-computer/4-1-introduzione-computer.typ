#import "/styles/percorso-computer.typ": *
#import "/styles/template.typ": grigio
#import "/styles/didattica.typ": esempio-teoria

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

*Questi sono computer!* I computer desktop e i computer portatili sono gli esempi che riconosciamo più facilmente: i primi sono progettati per essere utilizzati su una scrivania, mentre i secondi possono essere trasportati ovunque.

*Ma anche questi sono computer!* Smartphone, tablet, console e dispositivi indossabili hanno forme diverse, ma possiedono funzionalità proprie dei computer. Altri computer, come i sistemi embedded, sono incorporati in dispositivi e macchinari.

== Computer desktop e portatili

#tipo([Computer desktop], "desktop.jpg")[
  I *computer desktop*, chiamati anche *computer fissi*, vengono chiamati così proprio perché sono progettati per poter essere posizionati su una scrivania o su un tavolo. Possono offrire prestazioni elevate; il confronto con altre tipologie dipende comunque dai componenti e dall’utilizzo.
]

#tipo([Computer portatili], "portatile.jpg")[
  I *computer portatili*, chiamati anche semplicemente *notebook* o *laptop*, sono computer di dimensioni ridotte, proprio per poter essere facilmente trasportati ovunque. Infatti sono dotati di una *batteria ricaricabile*.
]

== Smartphone e tablet

#tipo([Smartphone], "smartphone.jpg")[
  Gli *smartphone* non sono altro che telefoni cellulari dotati di uno *schermo touchscreen* e di funzionalità proprie dei computer. Con uno smartphone è possibile effettuare telefonate, navigare su Internet, inviare e ricevere messaggi di testo o di posta elettronica.
]

#tipo([Tablet], "tablet.jpg")[
  I *tablet* sono dispositivi dotati di caratteristiche *hardware e software* proprie degli smartphone che, a seconda dei casi, consentono o meno di sostituire un computer portatile.
]

#pagebreak()

= Altre tipologie di computer

#tipo([Console], "console.jpg")[
  Le *console* sono particolari computer progettati principalmente per i *videogiochi*. Sono collegabili a un televisore oppure sono dotate di schermo integrato. Di solito hanno bisogno di un *controller* per funzionare.
]

#tipo([Server], "server.jpg")[
  I *server* sono speciali computer che forniscono *servizi, dati o risorse* ad altri computer attraverso la rete Internet. Permettono, per esempio, di visitare pagine web, guardare un film in streaming o utilizzare un social network.
]

#tipo([Dispositivi wearable], "smartwatch.jpg")[
  I *dispositivi wearable* sono piccoli computer che possono essere *indossati*, come smartwatch, auricolari e smartglasses. Di solito hanno sensori per misurare alcuni parametri di chi li indossa, come frequenza cardiaca, sonno e rumore.
]

#tipo([Sistemi embedded], "embedded.jpg")[
  I *sistemi embedded* sono particolari computer inseriti all’interno di un dispositivo o di un macchinario, progettati per svolgere *funzioni specifiche*. Il termine inglese _embedded_ significa *«incorporato»*. Ne sono esempi i sistemi presenti in lavatrici, forni a microonde e altre apparecchiature elettroniche e industriali.
]

#richiamo[
  Un computer può quindi essere utilizzato su una scrivania, essere trasportato, essere indossato oppure trovarsi all’interno di un altro dispositivo. La forma e lo scopo cambiano a seconda della tipologia.
]

#pagebreak()

= I sistemi embedded

Un *sistema embedded*, o *«sistema incorporato»*, è un piccolo computer inserito dentro un altro dispositivo per svolgere una *funzione ben precisa*.

A differenza di un normale computer o di uno smartphone, che servono a fare tantissime cose diverse, un sistema embedded è programmato per svolgere un *compito specifico* legato al dispositivo in cui è incorporato.

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

Un *server* è un computer specializzato che ha il compito di *memorizzare, elaborare e distribuire dati* ad altri computer collegati su Internet.

Un server rimane in attesa di esaudire le richieste di altri computer. Nella pratica, quando navighiamo sul Web, stiamo chiedendo i dati della pagina web che visualizziamo a un server. Per offrire questo servizio in modo continuo, i server sono normalmente mantenuti accesi *24 ore al giorno, 7 giorni su 7*.

#foto("server-ibm.jpg", altezza: 55mm, didascalia: [Sistemi server: computer che mettono dati e servizi a disposizione di altri computer.])

#esempio-teoria(titolo: [Esempi nell’uso quotidiano])[
  *Streaming e social media.* I video e le immagini che visualizziamo sui social media o sulle piattaforme di streaming sono memorizzati sui server dell’azienda che fornisce il servizio, non necessariamente in modo permanente sul nostro dispositivo.

*Gaming online.* Nei giochi multiplayer online, un server centrale elabora in tempo reale le posizioni dei giocatori, i punteggi e le azioni di gioco, *sincronizzando la partita*.

*Cloud storage: Google Drive e iCloud.* Quando salviamo un file nel cloud, per esempio su Google Drive, stiamo semplicemente salvando un file nella memoria di un altro computer: *un server*.

*Web ed email.* I contenuti dei siti web sono ospitati su server, chiamati *web server*. Allo stesso modo, l’invio e la ricezione delle email, per esempio con Gmail o Outlook, sono gestiti dai *server di posta*, che mandano le email ai destinatari corretti.
]

#pagebreak()

= Hardware e software

== Hardware: le componenti fisiche

Per *hardware (HW)* si intende tutto ciò che riguarda il computer e che è *tangibile, materiale, che ha un peso fisico*. In sostanza è l’insieme delle componenti fisiche — meccaniche, elettriche, elettroniche, magnetiche e ottiche — che costituiscono l’*elaboratore*.

#grid(columns: (1fr, 1fr), column-gutter: 8mm,
  foto("scheda-madre.jpg", altezza: 40mm, didascalia: [Una scheda madre.]),
  foto("smartphone-interno.jpg", altezza: 40mm, didascalia: [Le componenti fisiche all’interno di uno smartphone.]),
)

== Software: i programmi

Per *software (SW)* si intende tutto ciò che c’è ma *non è tangibile*. È la parte invisibile di un elaboratore, costituita dai *programmi* residenti nella memoria del computer o nei supporti di memorizzazione.

#esempio-teoria[
  Windows e Android sono esempi di software. Anche le applicazioni che usiamo per accedere ai servizi online fanno parte del software: ciò che utilizziamo non si esaurisce nelle componenti fisiche del dispositivo.
]

#grid(columns: (1.7fr, 1fr, 0.9fr), column-gutter: 8mm,
  foto("windows.jpg", altezza: 18mm, didascalia: [Windows.]),
  foto("android.jpg", altezza: 18mm, didascalia: [Android.]),
  foto("drive.jpg", altezza: 18mm, didascalia: [Google Drive.]),
)

#richiamo[
  *Hardware:* componenti fisiche che costituiscono l’elaboratore. \
  *Software:* programmi presenti nella memoria del computer o nei supporti di memorizzazione.
]
