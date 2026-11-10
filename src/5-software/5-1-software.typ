#import "/styles/percorso-computer.typ": *

= Programmi, processi e applicazioni

#richiamo[

*Idea chiave:* l'hardware è la macchina fisica; il *software* è l'insieme delle istruzioni che le permettono di svolgere compiti diversi.

Lo stesso computer può essere usato per scrivere, comunicare, ascoltare musica o giocare perché esegue *programmi diversi*.

]

== Il programma

Un *programma* è un insieme organizzato di istruzioni che un computer esegue per svolgere un compito. Le istruzioni possono essere scritte in un *linguaggio di programmazione*; il testo prodotto dal programmatore viene chiamato *codice sorgente*.

*Esempio: le regole di un gioco.* Quando viene premuta la freccia destra, il personaggio si sposta verso destra. Se incontra un ostacolo, perde una vita. Queste regole possono essere trasformate in istruzioni eseguibili.

Un *programma* è il software disponibile per essere eseguito. Un *processo* è un programma durante la sua esecuzione. Si possono avere più processi contemporaneamente.

== Software di base e applicativo

#table(columns: (1fr, 1fr),
  table.header([Software di base], [Software applicativo]),
  [Permette al dispositivo di avviarsi e funzionare e fornisce servizi agli altri programmi], [Permette alle persone di svolgere attività concrete],
  [Sistema operativo, firmware di avvio], [Word, browser, lettori musicali, videogiochi],
)

Il *sistema operativo (SO)* è uno dei principali software di base. Esempi: *Windows, macOS, Linux, Android e iOS*. Non è la stessa cosa di un'applicazione: il sistema operativo gestisce le risorse di cui le applicazioni hanno bisogno.

Un’istruzione deve indicare un’operazione eseguibile. Nel gioco, «se incontra un ostacolo perde una vita» collega una condizione a un effetto: il programma controlla la situazione e aggiorna il risultato. Il codice sorgente descrive queste regole; per eseguirle intervengono strumenti software che le rendono utilizzabili dal dispositivo.

Il programma conservato nell’archiviazione e il processo attivo non sono la stessa cosa. Puoi avere un lettore musicale installato senza usarlo; quando lo avvii, il sistema mette a disposizione memoria e tempo di elaborazione. Chiudere un processo non significa disinstallare il programma.

#pagebreak()

= Il sistema operativo gestisce le risorse

== Le funzioni del sistema operativo

- *Esegue programmi* e permette di passare da un'attività all'altra (_multitasking_).
- *Gestisce le risorse*: CPU, RAM, periferiche e spazio di archiviazione.
- *Organizza file e cartelle* attraverso il _file system_.
- *Gestisce utenti e permessi*, determinando chi può accedere a determinate risorse.
- *Fornisce funzioni per la rete*, utili per comunicare con altri dispositivi.

#richiamo[

*Esempio:* quando si apre un documento, il sistema operativo aiuta a recuperarlo dal dispositivo di archiviazione, utilizza le risorse necessarie e permette al programma di mostrarlo. L'utente non deve conoscere tutti i dettagli del funzionamento dell'hardware.

]

Il multitasking permette di mantenere attivi più processi. Il sistema operativo assegna loro risorse e alterna molte operazioni rapidamente; quando sono disponibili più core, alcuni lavori possono procedere anche in parallelo. Vedere più finestre aperte non significa che ogni programma possieda una CPU tutta per sé.

Il file system consente al sistema di organizzare e ritrovare i dati nell’archiviazione. Quando salvi una relazione, l’applicazione richiede servizi al sistema operativo, che coordina l’operazione con il dispositivo. File e percorsi sono approfonditi nella dispensa separata: qui interessa capire chi rende possibili queste operazioni.

Utenti e permessi stabiliscono quali risorse si possono usare. Un utente può leggere un materiale senza essere autorizzato a modificarlo: il programma disponibile e il permesso di eseguire un’azione sono due aspetti differenti.

#schema("/assets/svg/hardware-software/strati-software.svg")

#pagebreak()

= Interfacce e compatibilità

== Comunicare con i programmi

L'*interfaccia utente* è l'insieme degli elementi attraverso cui si interagisce con il software: pulsanti, finestre, menu, icone, campi di testo e comandi vocali.

Quando viene toccata un'icona, si tocca materialmente lo *schermo*, cioè l'hardware. Il dispositivo rileva il comando e il software esegue le istruzioni collegate.

Un modo semplice per rappresentare il sistema è:

*Utente → applicazione → sistema operativo → hardware*

È uno schema semplificato: nella pratica le relazioni possono essere più articolate.

== Programmi e compatibilità

Alcune applicazioni sono disponibili in versioni differenti per Windows, macOS o Linux. Altre funzionano su più sistemi operativi. Le *applicazioni web* si utilizzano spesso attraverso un browser, senza installare una versione specifica per ogni sistema.

*Esempio:* un documento può essere modificato in un'applicazione installata oppure in un'applicazione online. Lo scopo è simile, ma il modo in cui il programma viene utilizzato è diverso.

Un’interfaccia non coincide con tutto il programma: è la parte attraverso cui comunichi con esso. Un pulsante visibile sullo schermo rappresenta un comando; il tocco viene rilevato dall’hardware e interpretato dal software. Anche una voce di menu, una scorciatoia da tastiera o un comando vocale possono richiamare una funzione.

La compatibilità riguarda la possibilità di utilizzare correttamente un programma nel proprio ambiente. Prima di installarlo bisogna controllare il sistema operativo supportato e i requisiti hardware. Un’applicazione web riduce la necessità di una versione installata per ciascun sistema, ma richiede comunque un browser compatibile e, per molte funzioni, una connessione.
