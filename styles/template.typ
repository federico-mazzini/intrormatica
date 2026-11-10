// Componenti condivisi. Percorsi assoluti rispetto alla radice del progetto.
#let blu = rgb("#0057b8")
#let verde = rgb("#167044")
#let arancione = rgb("#A34708")
#let tema = state("tema-dispensa", (accento: blu, sfondo: rgb("#F2F6FC")))
#let grigio = rgb("#555555")
#let bordo = rgb("#dddddd")

#let riquadro(titolo, body) = context {
  let blu = tema.get().accento
  block(
  width: 100%,
  breakable: true,
  inset: (x: 12pt, y: 10pt),
  stroke: (left: 2pt + blu),
  above: 12pt,
  below: 12pt,
)[
  #set par(justify: false)
  #if titolo != none [
    #block(below: 8pt, sticky: true)[
      #text(font: "Libertinus Serif", weight: "bold", fill: blu)[#titolo]
    ]
  ]
  #body
]

}

#let definizione(body, titolo: "Definizione") = riquadro(titolo, body)
#let esempio(body, titolo: "Esempio") = riquadro(titolo, body)
#let domande(body, titolo: "Domande di riflessione") = riquadro(titolo, body)

#let figura(percorso, didascalia, larghezza: 85%, alt: none) = figure(
  image(percorso, width: larghezza, alt: alt),
  caption: didascalia,
  kind: image,
  supplement: [Figura],
)

#let caso-reale(titolo, body, immagine: none, didascalia: none, fonte: none, alt: none) = riquadro(
  [Caso reale · #titolo],
  [
    #body
    #if immagine != none {
      if didascalia != none {
        figura(immagine, didascalia, alt: alt)
      } else {
        align(center, image(immagine, width: 85%, alt: alt))
      }
    }
    #if fonte != none {
      block(above: 6pt)[#text(size: 9pt)[Fonte: #link(fonte)]]
    }
  ],
)

#let dispensa(body, titolo: "Bit, byte e dimensioni dei file", sottotitolo: "Dispensa didattica di informatica.", numerazione: "1.1", spazio-paragrafi: 0.8em, interlinea: 0.60em, accento: blu, sfondo: rgb("#F2F6FC")) = {
  tema.update((accento: accento, sfondo: sfondo))
  set document(title: titolo, author: "Materiale didattico")
  // Font incluso in Typst: nessuna installazione aggiuntiva in locale o in CI.
  set text(font: "Libertinus Serif", size: 11pt, lang: "it", fill: black)
  set page(
    paper: "a4",
    margin: (top: 24mm, bottom: 24mm, left: 25mm, right: 23mm),
    header: context {
      if counter(page).get().first() > 1 {
        text(size: 8pt, fill: grigio)[#titolo]
      }
    },
    footer: context align(right, text(size: 9pt, fill: grigio, counter(page).display("1"))),
  )
  set par(justify: true, leading: interlinea, spacing: spazio-paragrafi)
  set heading(numbering: numerazione)
  set list(indent: 14pt, body-indent: 5pt, spacing: 0.85em)
  set block(above: 9pt, below: 9pt)
  set figure(gap: 7pt)
  set table(
    inset: (x: 7pt, y: 6pt),
    stroke: (x: none, y: 0.45pt + bordo),
    fill: (_, y) => if y == 0 { sfondo },
  )
  show table.cell.where(y: 0): set text(fill: accento, weight: "bold")
  show table: it => {
    set text(size: 10pt)
    set par(justify: false, leading: 0.4em)
    block(breakable: false, it)
  }
  show heading: set block(sticky: true, above: 18pt, below: 12pt)
  show heading.where(level: 1): set text(size: 19pt, weight: "bold", fill: accento)
  show heading.where(level: 2): set text(size: 14pt, weight: "bold")
  show heading.where(level: 3): set text(size: 11.5pt, weight: "bold", fill: accento)
  show heading.where(level: 2): set heading(numbering: none)
  show heading.where(level: 3): set heading(numbering: none)
  show figure.caption: set text(size: 9pt, fill: grigio)
  show link: set text(fill: accento)

  block(below: 20pt)[
    #set par(justify: false)
    #line(length: 22mm, stroke: 3pt + accento)
    #v(12pt)
    #text(size: 28pt, weight: "bold", hyphenate: false)[#titolo]
    #v(12pt)
    #text(size: 10pt)[#sottotitolo]
    #v(10pt)
    #line(length: 100%, stroke: 0.5pt + bordo)
  ]
  body
}
