#import "/styles/template.typ": dispensa, verde, grigio
#import "/styles/didattica.typ": richiamo, diagramma
#show: dispensa.with(
  titolo: "File e cartelle",
  sottotitolo: "Riconoscere i file, organizzare le cartelle e leggere i percorsi.",
  numerazione: "1.",
  accento: verde,
  sfondo: rgb("#F0F7F2"),
)

#include "1-1-file-cartelle.typ"

#pagebreak()
#include "1-2-esercizi.typ"
