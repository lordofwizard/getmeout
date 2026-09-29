// ATS-friendly resume template.
// Placeholder — replace with your real template.typ. The agent copies this
// structure into output/<Role>-<Company>.typ and never edits this file.
//
// ATS rules honoured here: single column, no tables for layout, no text in
// graphics, standard section headings, selectable text, no header/footer.

#set page(margin: (x: 1.4cm, y: 1.2cm))
#set text(font: ("Calibri", "Carlito"), size: 10pt)
#set par(justify: false, leading: 0.6em)
#show heading: set text(size: 11pt, weight: "bold")

#let section(title) = {
  v(0.4em)
  heading(level: 2, upper(title))
  v(-0.4em)
  line(length: 100%, stroke: 0.5pt)
  v(0.1em)
}

#let job(role, org, dates, bullets) = {
  grid(
    columns: (1fr, auto),
    text(weight: "bold", role + " — " + org),
    text(dates),
  )
  v(-0.3em)
  for b in bullets [ - #b ]
  v(0.2em)
}

// ---------------------------------------------------------------- header
#align(center)[
  #text(size: 17pt, weight: "bold")[FULL NAME] \
  #v(-0.3em)
  #text(size: 10.5pt)[TITLE LINE TAILORED TO THE JD] \
  #v(-0.3em)
  #text(size: 9.5pt)[
    City, Country · +00 00000 00000 · #link("mailto:you@example.com")[you\@example.com] ·
    #link("https://linkedin.com/in/you")[linkedin.com/in/you] ·
    #link("https://github.com/you")[github.com/you]
  ]
]

// --------------------------------------------------------------- summary
#section("Summary")
Two to three lines. Role title from the JD, years of experience, the two
strongest must-haves you cover, one hard number.

// ---------------------------------------------------------------- skills
#section("Technical Skills")
*Languages:* \
*AI/ML:* \
*Infrastructure:* \
*Data:* \
*Tools:*

// ------------------------------------------------------------ experience
#section("Experience")

#job("Role", "Company", "MMM YYYY – Present", (
  [Bullet with a number in it.],
  [Bullet mirroring the JD's exact noun phrases.],
))

// ------------------------------------------------------------- education
#section("Education")
*Degree, Field* — Institution #h(1fr) MMM YYYY

// -------------------------------------------------------------- optional
// #section("Projects")
// #section("Certifications")
