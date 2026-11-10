#import "/styles/percorso-computer.typ": richiamo
#import "/styles/template.typ": grigio

#set par(spacing: 1em)

#let foto(nome, larghezza: 100%, altezza: 24mm, didascalia: none) = block(width: 100%, breakable: false)[
  #align(center, image(
    "/assets/immagini/5-software/" + nome + ".jpg",
    width: larghezza, height: altezza, fit: "contain",
  ))
  #if didascalia != none [
    #block(width: 100%, above: 4pt)[
      #set par(justify: false)
      #align(center, text(size: 9pt, fill: grigio, didascalia))
    ]
  ]
]

= Il comportamento di un computer

Tutto ciò che in un computer è non fisico e non tangibile prende il nome di *software*. Il software dà al computer un comportamento e uno scopo ed è costituito dai programmi. In ogni computer distinguiamo la macchina fisica, l’*hardware*, dal programma che la macchina sta eseguendo, il *software*.

#richiamo[
  *I computer sono macchine universali.* La stessa macchina può svolgere compiti diversi seguendo istruzioni diverse. Con un programma scrive un testo, con un altro riproduce musica.
]

== Il programma

Un *programma* è un insieme di istruzioni, leggibili da un computer, per risolvere in maniera automatica un certo problema. I programmi si scrivono in un *linguaggio di programmazione*, pensato per esprimere istruzioni che il computer possa eseguire. *Programmare* significa scrivere il codice di un programma, chiamato *codice sorgente*.

I programmi possono avere dimensioni molto diverse. I numeri qui sotto servono a dare un’idea dell’ordine di grandezza. Il conteggio delle righe dipende dalla versione e da quali parti del codice si includono.

#table(
  columns: (1fr, 1fr, 1fr),
  table.header([Windows 10], [GTA V], [Minecraft]),
  [Circa 50 milioni di righe], [Circa 36 milioni di righe], [Circa 500 mila righe],
)

== Software di base e software applicativo

Il *software di base* serve a far funzionare il computer. Ne fanno parte il *BIOS/UEFI*, che interviene all’accensione, e il *sistema operativo*, che gestisce il computer e permette di eseguire le applicazioni.

#grid(columns: (1.6fr, 1fr, 1fr), column-gutter: 7mm,
  foto("windows", altezza: 15mm),
  foto("linux", altezza: 15mm),
  foto("android", altezza: 15mm),
)

Il *software applicativo* comprende i programmi che permettono di svolgere attività utili per gli utenti. Si usa per scrivere testi, mail e codice, ascoltare musica, giocare e persino per andare sulla Luna.

#pagebreak()

= Il sistema operativo

Il *sistema operativo* è il software di base che si frappone tra l’hardware e le applicazioni. Gestisce le risorse del computer e fornisce ai programmi gli strumenti per usarle.

== Funzioni principali

#table(
  columns: (1fr, 2.5fr),
  table.header([Funzione], [Come interviene il sistema operativo]),
  [*Esegue le applicazioni*], [Quando avvii un programma, il sistema operativo crea e gestisce un *processo*. Può mantenere in esecuzione più programmi contemporaneamente. Questa capacità si chiama *multitasking*.],
  [*Fa dialogare applicazioni e hardware*], [Le applicazioni possono chiedere al sistema operativo di svolgere un’operazione, ad esempio aprire un file. Queste richieste si chiamano *chiamate di sistema* (_system call_).],
  [*Gestisce la memoria e i file*], [Assegna la RAM ai programmi in uso. Nella memoria secondaria permette di salvare e recuperare i dati attraverso il *file system*.],
  [*Controlla gli accessi*], [Distingue gli *utenti* autorizzati ad accedere al sistema e usa i *permessi* per stabilire che cosa ciascuno può fare.],
  [*Gestisce la rete*], [Permette al computer di scambiare dati con altri dispositivi. Il browser usa queste funzioni per navigare su Internet.],
)

== Il file system

Il *file system* è il modo in cui il sistema operativo organizza i dati nella memoria secondaria. Il sistema operativo crea un’*astrazione*, cioè un modo di rappresentare la memoria attraverso *file e cartelle*. File e cartelle sono organizzati sotto forma di *albero*. Ciascuno è individuabile attraverso un *percorso*.

#foto("albero-file", altezza: 74mm, didascalia: [Un albero di file e cartelle. Il percorso di `Grades` parte dall’unità `D:` e attraversa tre cartelle.])

#align(center, text(size: 10pt)[`D:\My Documents\TEACHING\105\Grades`])

#pagebreak()

= Il software applicativo

Il *software applicativo* serve all’utente per fare qualcosa di concreto. Il sistema operativo fornisce gli strumenti e il software applicativo li usa per realizzare un obiettivo, come scrivere un documento, navigare online, inviare messaggi o giocare.

#grid(columns: (1fr, 1fr, 1fr, 1.5fr), column-gutter: 7mm,
  foto("telegram", altezza: 19mm, didascalia: [Telegram]),
  foto("gmail", altezza: 19mm, didascalia: [Gmail]),
  foto("spotify", altezza: 19mm, didascalia: [Spotify]),
  foto("minecraft", altezza: 19mm, didascalia: [Minecraft]),
)

== Come usa le risorse del computer

Quando un’applicazione deve salvare un documento o inviare un messaggio, chiede al *sistema operativo* di accedere alla memoria secondaria o alla rete. Per esempio, Telegram gestisce la conversazione che vedi sullo schermo e usa i servizi di rete del sistema operativo per inviare i dati.

== La scelta della piattaforma

Un’applicazione installabile deve essere compatibile con il *sistema operativo* che la esegue. Lo stesso programma può essere preparato per più piattaforme. Per questo una pagina di download può presentare versioni diverse dello stesso programma.

#foto("telegram-desktop", larghezza: 91%, altezza: 75mm, didascalia: [La pagina di Telegram Desktop mostra download distinti per Windows, macOS e Linux.])

#richiamo[
  Se usi un computer con macOS, scegli la versione per macOS. L’applicazione serve allo stesso scopo sulle diverse piattaforme, ma ogni versione usa i servizi del sistema operativo per cui è stata preparata.
]
