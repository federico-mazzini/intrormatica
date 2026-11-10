#import "/styles/percorso-computer.typ": *

= Dall’accensione al sistema pronto

#richiamo[

Per funzionare non basta ricevere corrente: il computer deve eseguire una sequenza di istruzioni e *avviare il sistema operativo*.

]

== L'accensione

Quando viene premuto il pulsante, l'alimentatore o la batteria forniscono energia ai componenti. La CPU può iniziare a eseguire le prime istruzioni previste per l'avvio.

== Il firmware

Il *firmware* è un software memorizzato nel dispositivo, utilizzato per controllare alcune funzioni fondamentali. Nei PC moderni un esempio è *UEFI*; nei sistemi più vecchi si parla spesso di *BIOS*.

Il firmware esegue alcune operazioni iniziali, prepara l'hardware e avvia la ricerca del sistema operativo.

#richiamo[

*Distinzione:* il firmware è *software*, anche se è strettamente collegato al funzionamento dei componenti fisici. Nei dispositivi moderni può essere conservato in una memoria flash aggiornabile.

]

== Il caricamento del sistema operativo

Il sistema operativo è normalmente conservato su un *SSD* o su un altro dispositivo di archiviazione. Durante l'avvio, le istruzioni necessarie vengono caricate in *RAM* ed eseguite dalla *CPU*.

Il sistema operativo inizia a gestire memoria, periferiche, file, utenti e applicazioni.

== La schermata di accesso e il desktop

Al termine dell'avvio compare la schermata di accesso oppure il *desktop*, con finestre, menu e icone. Attraverso l'*interfaccia utente* è possibile avviare programmi e utilizzare i file.

== La sequenza in breve

#table(columns: (1fr, 1fr, 1fr),
  table.header([Fase], [Elementi principali], [Che cosa accade]),
  [1. Energia], [Alimentatore o batteria], [I componenti ricevono alimentazione],
  [2. Firmware], [CPU e memoria del firmware], [Vengono eseguite le prime istruzioni],
  [3. Avvio SO], [SSD/HDD, RAM e CPU], [Il sistema operativo viene caricato ed eseguito],
  [4. Interfaccia], [SO, schermo, periferiche], [Il dispositivo è pronto per l'uso],
)

L’ordine è importante: all’inizio il sistema operativo non è ancora in esecuzione. Le prime istruzioni devono quindi essere disponibili in una memoria non volatile del dispositivo. Il firmware prepara il sistema e avvia il percorso di caricamento, normalmente attraverso un programma di avvio che trasferisce il controllo al sistema operativo.

Il sistema operativo conservato nell’SSD non viene consumato quando si avvia il computer: nell’archiviazione resta una copia persistente, mentre le parti necessarie al lavoro sono caricate in RAM. La CPU esegue le istruzioni. Una schermata del firmware o un errore di avvio possono comparire anche se non è disponibile un sistema operativo utilizzabile: ricevere energia non basta per raggiungere il desktop.

#schema("/assets/svg/hardware-software/avvio.svg")

#pagebreak()

= Un comando mette in relazione più parti

== Esempio guidato — Aprire una foto

#table(columns: (1fr, 1fr),
  table.header([Fase], [Che cosa accade]),
  [Input], [Doppio clic su un file fotografico tramite mouse],
  [Sistema operativo], [Riceve il comando e permette di aprire l'applicazione adatta],
  [Memoria], [I dati della foto vengono letti dall'SSD e utilizzati in RAM],
  [Elaborazione], [La CPU esegue le istruzioni; la GPU può contribuire alla visualizzazione],
  [Output], [L'immagine compare sul monitor],
)

Questo è uno *schema semplificato*: non descrive tutte le operazioni interne, ma permette di riconoscere i compiti dei componenti.

Il doppio clic non contiene già l’immagine: è una richiesta dell’utente. Il sistema operativo e l’applicazione coordinano l’apertura; i dati conservati nell’SSD vengono letti e resi disponibili nella memoria di lavoro. CPU e, quando coinvolta, GPU eseguono le operazioni necessarie alla presentazione. Il monitor produce l’output visibile.

Questo racconto descrive ruoli che collaborano, non una fila di oggetti attraversati da un foglio. Molti scambi avvengono più volte e alcuni lavori procedono contemporaneamente. Perciò in uno schema conviene indicare sulle frecce che cosa viene richiesto o trasferito.

Visualizzare e salvare sono operazioni distinte. Aprire una fotografia non richiede necessariamente di riscriverla nell’SSD; modificarla e conservarne la nuova versione richiede invece un salvataggio. Durante l’ascolto in streaming alcuni dati arrivano dalla rete: non è necessario che il brano completo sia già un file locale.

#schema("/assets/svg/hardware-software/viaggio-comando.svg")
