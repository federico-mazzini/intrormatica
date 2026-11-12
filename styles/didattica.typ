// Componenti didattici nello stile delle altre dispense di informatica.
#import "template.typ": blu, grigio, bordo, riquadro, tema

#let vuoto(w) = box(width: w, height: 0.98em, stroke: (bottom: 0.6pt + black))
#let riga-risposta(w) = box(width: w, height: 1em, stroke: (bottom: 0.5pt + grigio))
#let risposta(righe: 2) = block(width: 100%, breakable: false, above: 4pt, below: 10pt)[
  #set block(above: 0pt, below: 0pt)
  #for _ in range(righe) {
    block(width: 100%, height: 8mm, stroke: (bottom: 0.45pt + rgb("#999999")))
  }
]
#let esempio-conversione(titolo, body) = context {
  let blu = tema.get().accento
  let sfondo = tema.get().sfondo
  block(
  width: 100%, breakable: false, fill: sfondo,
  inset: (x: 12pt, y: 10pt), above: 10pt, below: 10pt,
)[
  #set par(justify: false)
  #block(below: 6pt)[#text(weight: "bold", fill: blu)[#titolo]]
  #body
]
}
#let affermazione(numero, body) = block(width: 100%, breakable: false, above: 12pt, below: 12pt)[
  *#numero.* #body \
  #v(4pt)
  #box(width: 3mm, height: 3mm, stroke: 0.5pt + grigio) Vero
  #h(5mm)
  #box(width: 3mm, height: 3mm, stroke: 0.5pt + grigio) Falso
  #h(5mm) *Perché?*
  #risposta(righe: 2)
]
#let richiamo(body) = block(breakable: false)[#riquadro(none, body)]

// Riquadro per gli esempi di teoria, nel colore della dispensa.
#let esempio-teoria(body, titolo: [Esempio]) = context {
  let colori = tema.get()
  block(width: 100%, breakable: false, fill: colori.sfondo, inset: 12pt)[
    #set par(justify: false)
    #set list(spacing: 0.4em)
    #text(weight: "bold", fill: colori.accento)[#titolo]
    #parbreak()
    #body
  ]
}

// Uso: #da-ricordare[Un titolo breve][Testo del promemoria.]
#let da-ricordare(titolo, body) = context {
  let accento = tema.get().accento
  block(width: 100%, breakable: false, above: 12pt, below: 12pt)[
    #set par(justify: false)
    #block(width: 100%, above: 0pt, below: 4pt)[
      #align(right)[#text(size: 9pt, weight: "bold", fill: accento)[Da ricordare]]
    ]
    #block(
      width: 100%,
      stroke: 0.8pt + accento,
      inset: (x: 12pt, y: 10pt),
      above: 0pt,
      below: 0pt,
    )[
      #block(above: 0pt, below: 7pt)[
        #text(size: 14pt, weight: "bold", fill: black)[#titolo]
      ]
      #body
    ]
  ]
}

#let nota(body) = block(width: 100%, breakable: false, above: 10pt, below: 10pt)[
  #set par(justify: false)
  #body
]
#let titolo-sezione(body) = context {
  let blu = tema.get().accento
  block(sticky: true, above: 0pt, below: 12pt)[
  #text(size: 23pt, weight: "bold", fill: blu)[#body]
]
}
#let diagramma(percorso, width: 100%) = block(
  width: 100%, breakable: false, above: 10pt, below: 10pt,
)[
  #align(center)[#image(percorso, width: width)]
]
