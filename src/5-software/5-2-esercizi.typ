#import "/styles/didattica.typ": *
#import "/styles/template.typ": grigio
#set heading(numbering: none)
#set par(justify: false)
#pagebreak()

#let domanda(numero, body, righe: 4) = block(width: 100%, breakable: false, above: 10pt, below: 10pt)[
  *#numero.* #body
  #risposta(righe: righe)
]

#titolo-sezione[Esercizi: il software]

= 1. Completa il testo: programmi e software

Inserisci le parole al posto giusto. Usa ogni parola una sola volta.

#richiamo[
  *PAROLE:* sorgente · applicativo · hardware · programmazione · base · programma · operativo
]

Un #vuoto(30mm) è un insieme di istruzioni che il computer esegue per svolgere un compito. Chi lo scrive usa un linguaggio di #vuoto(38mm); il testo scritto si chiama codice #vuoto(28mm).

Le parti fisiche del computer costituiscono l’#vuoto(28mm). Per avviare e far funzionare il computer serve il software di #vuoto(22mm), che comprende il firmware e il sistema #vuoto(30mm).

I programmi con cui scriviamo documenti, ascoltiamo musica o giochiamo fanno parte del software #vuoto(35mm).

= 2. Completa il testo: il sistema operativo

Inserisci le parole al posto giusto. Usa ogni parola una sola volta.

#richiamo[
  *PAROLE:* permessi · rete · processi · system · RAM · multitasking · percorso
]

Il sistema operativo gestisce i programmi in esecuzione, chiamati #vuoto(30mm). La possibilità di usare più programmi nello stesso periodo di tempo si chiama #vuoto(35mm).

Il sistema operativo assegna la #vuoto(22mm) ai programmi e usa i #vuoto(28mm) per stabilire quali file e risorse ciascun utente può usare o modificare.

Il file #vuoto(25mm) organizza i dati nella memoria secondaria. Un file può essere ritrovato seguendo il suo #vuoto(30mm). Per inviare un messaggio online, un’applicazione usa i servizi di #vuoto(25mm) del sistema operativo.

#pagebreak()

= 3. Completa la mappa

Scrivi le parole nei riquadri corretti. Usa ogni parola una sola volta.

#richiamo[
  *PAROLE:* applicativo · file system · operativo · firmware · rete · base
]

#diagramma("/assets/svg/mappa-esercizi-software.svg")

Scegli un’applicazione che conosci. Scrivi che cosa permette di fare e indica un servizio del sistema operativo di cui ha bisogno.
#risposta(righe: 3)

#pagebreak()

= 4. Vero o falso? Motiva

Spunta una casella per ogni frase. Spiega la tua scelta e correggi le frasi false.

#affermazione(1)[Un computer può svolgere compiti diversi eseguendo programmi diversi.]
#affermazione(2)[Il sistema operativo e il software applicativo hanno esattamente lo stesso compito.]
#affermazione(3)[Il file system organizza i dati attraverso file e cartelle.]
#affermazione(4)[I permessi permettono a qualsiasi utente di modificare tutti i file del computer.]
#affermazione(5)[Un’applicazione può chiedere al sistema operativo di usare la rete.]
#affermazione(6)[Qualsiasi versione di un programma si può installare su qualsiasi sistema operativo.]

#pagebreak()

= 5. Rispondi e ragiona

Rispondi con frasi complete. Usa gli esempi della teoria quando ti sono utili.

#domanda(1)[Che differenza c’è tra software di base e software applicativo? Fai un esempio per ciascuno.]
#domanda(2)[Stai ascoltando musica mentre scrivi un documento. Quale capacità del sistema operativo rende possibile usare i due programmi nello stesso periodo di tempo? Spiega.]
#domanda(3)[Scrivi un messaggio in Telegram e premi Invia. Quale parte del lavoro svolge l’applicazione e quale servizio chiede al sistema operativo?]
#domanda(4)[Vuoi installare Telegram su un computer con macOS. La pagina offre versioni per Windows, macOS e Linux. Quale scegli e perché?]
