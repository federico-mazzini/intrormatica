#import "/styles/didattica.typ": *
#import "/styles/template.typ": grigio
#set heading(numbering: none)
#set par(justify: false)
#pagebreak()

#let domanda(numero, body, righe: 4) = block(width: 100%, breakable: false, above: 10pt, below: 10pt)[
  *#numero.* #body
  #risposta(righe: righe)
]

#titolo-sezione[Esercizi: l’hardware]

= 1. Completa il testo: il lavoro del computer

Inserisci le parole al posto giusto. Usa ogni parola una sola volta.

#richiamo[
  *PAROLE:* output · core · CPU · clock · bus · input · istruzioni · scheda madre
]

Il computer riceve dati e comandi attraverso i dispositivi di #vuoto(25mm). La #vuoto(20mm) elabora i dati eseguendo le #vuoto(30mm) dei programmi. I risultati vengono comunicati attraverso i dispositivi di #vuoto(25mm).

I componenti principali sono ospitati o collegati dalla #vuoto(36mm). I #vuoto(20mm) sono i collegamenti attraverso cui i componenti comunicano.

Il #vuoto(25mm) scandisce il lavoro del processore attraverso cicli regolari. All’interno della CPU, ciascun #vuoto(22mm) è un’unità capace di eseguire istruzioni.

= 2. Completa il testo: le memorie

Inserisci le parole al posto giusto. Usa ogni parola una sola volta.

#richiamo[
  *PAROLE:* capacità · flash · RAM · cache · SSD · volatile · HDD · secondaria
]

La #vuoto(20mm) contiene dati e istruzioni usati durante il lavoro. È una memoria #vuoto(28mm): il suo contenuto si perde quando viene tolta l’alimentazione.

Per conservare un documento occorre salvarlo nella memoria #vuoto(32mm). Gli #vuoto(20mm) usano dischi magnetici rotanti, mentre gli #vuoto(20mm) usano memorie elettroniche senza parti mobili.

La #vuoto(22mm) è una piccola memoria molto veloce vicina alla CPU. La #vuoto(27mm) indica quanti dati può contenere una memoria. Nei computer moderni il firmware di avvio è spesso conservato in una memoria #vuoto(25mm), che mantiene i dati e può essere aggiornata.

#pagebreak()

= 3. Completa la mappa

Scrivi le parole nei riquadri corretti. Usa ogni parola una sola volta.

#richiamo[
  *PAROLE:* output · RAM · CPU · cache · input · SSD
]

#diagramma("/assets/svg/mappa-esercizi-hardware.svg")

Scrivi un esempio per ciascuna delle due categorie di periferiche.

*Input:* #vuoto(45mm) #h(8mm) *Output:* #vuoto(45mm)

Quale memoria contiene temporaneamente il testo di un documento mentre lo stai scrivendo? Dove lo salvi per ritrovarlo dopo lo spegnimento?
#risposta(righe: 3)

#pagebreak()

= 4. Vero o falso? Motiva

Spunta una casella per ogni frase. Spiega la tua scelta e correggi le frasi false.

#affermazione(1)[La CPU esegue le istruzioni dei programmi ed elabora i dati.]
#affermazione(2)[La RAM conserva il suo contenuto anche quando viene tolta l’alimentazione.]
#affermazione(3)[Un touchscreen è una periferica sia di input sia di output.]
#affermazione(4)[Gli SSD contengono dischi magnetici rotanti e testine meccaniche.]
#affermazione(5)[Un ciclo di clock coincide sempre con un’istruzione completa.]
#affermazione(6)[La cache conserva copie di dati e istruzioni che potrebbero servire di nuovo alla CPU.]

#pagebreak()

= 5. Rispondi e ragiona

Rispondi con frasi complete. Usa gli esempi della teoria quando ti sono utili.

#domanda(1)[Scrivi una parola con la tastiera e la vedi sul monitor. Quali sono l’input, l’elaborazione e l’output?]
#domanda(2)[Che differenza c’è tra RAM e memoria secondaria? Usa il confronto con il piano di lavoro e il magazzino.]
#domanda(3)[Un computer ha un SSD da 512 GB con una velocità di lettura di 2 GB/s. Che cosa indicano i due valori? Quale descrive la capacità e quale la velocità?]
#domanda(4)[Che cosa sono i core di una CPU? Perché avere più core può essere utile quando il computer deve svolgere più attività?]
