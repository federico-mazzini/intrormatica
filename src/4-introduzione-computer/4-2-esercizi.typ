#import "/styles/didattica.typ": *
#import "/styles/template.typ": grigio
#set heading(numbering: none)
#set par(justify: false)
#pagebreak()

#let domanda(numero, body, righe: 4) = block(width: 100%, breakable: false, above: 10pt, below: 10pt)[
  *#numero.* #body
  #risposta(righe: righe)
]

#titolo-sezione[Esercizi: introduzione ai computer]

= 1. Completa il testo: i diversi computer

Inserisci le parole al posto giusto. Usa ogni parola una sola volta.

#richiamo[
  *PAROLE:* controller · portatili · wearable · desktop · embedded · touchscreen · batteria · server
]

I computer #vuoto(30mm) sono progettati per essere usati su una scrivania. I computer #vuoto(30mm), invece, sono facili da trasportare e possono funzionare grazie a una #vuoto(28mm) ricaricabile.

Smartphone e tablet si possono comandare toccando uno schermo #vuoto(35mm). Per giocare con una console si usa spesso un #vuoto(32mm).

I dispositivi #vuoto(30mm) possono essere indossati. I sistemi #vuoto(30mm) sono incorporati in altri dispositivi per svolgere compiti specifici. I #vuoto(25mm) forniscono dati e servizi ad altri dispositivi attraverso una rete.

= 2. Completa il testo: parti fisiche e programmi

Inserisci le parole al posto giusto. Usa ogni parola una sola volta.

#richiamo[
  *PAROLE:* programmi · scheda madre · Android · hardware · istruzioni · software
]

L’insieme delle parti fisiche di un computer si chiama #vuoto(30mm). Ne fanno parte la tastiera, il monitor e la #vuoto(35mm).

L’insieme dei #vuoto(30mm) si chiama invece #vuoto(30mm). Un programma contiene le #vuoto(30mm) che il computer esegue. Windows e #vuoto(25mm) sono esempi di sistemi operativi.

#pagebreak()

= 3. Completa la mappa

Scrivi le parole nei riquadri corretti. Usa ogni parola una sola volta.

#richiamo[
  *PAROLE:* software · server · hardware · wearable · embedded · portatile
]

#diagramma("/assets/svg/mappa-esercizi-introduzione-computer.svg")

Scegli uno dei quattro tipi di computer presenti nella mappa. Fai un esempio concreto e spiega dove o per che cosa viene usato.
#risposta(righe: 3)

#pagebreak()

= 4. Vero o falso? Motiva

Spunta una casella per ogni frase. Spiega la tua scelta e correggi le frasi false.

#affermazione(1)[Solo i computer fissi e i portatili sono veri computer.]
#affermazione(2)[Un sistema embedded è progettato per svolgere compiti specifici nel dispositivo in cui è incorporato.]
#affermazione(3)[Il controller di una console è un programma e quindi fa parte del software.]
#affermazione(4)[I server sono usati anche per fornire pagine web e gestire la posta elettronica.]
#affermazione(5)[Salvare un file nel cloud significa conservarlo soltanto nella memoria del proprio dispositivo.]
#affermazione(6)[Hardware e software collaborano per svolgere le attività del computer.]

#pagebreak()

= 5. Rispondi e ragiona

Rispondi con frasi complete. Usa gli esempi della teoria quando ti sono utili.

#domanda(1)[Perché uno smartphone può essere considerato un computer? Indica almeno due attività che permette di svolgere.]
#domanda(2)[Che differenza c’è tra un computer portatile e un sistema embedded dentro una lavatrice? Considera lo scopo per cui vengono usati.]
#domanda(3)[Quando apri una pagina web, che cosa chiedi a un server? Che cosa riceve il tuo dispositivo?]
#domanda(4)[Considera uno smartphone. Indica due elementi hardware e due esempi di software e spiega la differenza tra i due gruppi.]
