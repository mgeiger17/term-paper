// LTeX: enabled=false
#import "template/lib.typ": caption-with-source, dhbw-ka-adapter
#import "glossary.typ": abbreviations, glossary
#import "appendix.typ": appendices

#show: dhbw-ka-adapter.with(
  lang: "en",

  // Wether to display a signature line for the statutory declaration
  digital-submission: true,

  // Set to false if you also submit a printed copy of your thesis. Important for the statutory declaration
  digital-only: true,

  // Set to false if you do not need a confidentiality clause
  confidentiality-clause: true,

  // Add AI tools used for this thesis here, according to 4.6 of "Leitlinien für Wissenschaftliche Arbeiten in Bachelorstudiengängen Studienbereich Technik"
  ai-acknowledgement: (
    (
      tool: "ChatGPT",
      usage: [
        + Vibed chapter 1 - 6
        + Grammer correction
      ],
    ), // This last comma is important, keep it!
  ),

  // Long title, displayed on cover slide
  title-long: "",

  // Shorter title, displayed in header of each file
  title-short: "",

  thesis-type: "Projektarbeit 1 (T3_2000)",
  examination: "Bachelor of Science (B.Sc.)",
  study: "Computer Science",

  authors: (
    (
      firstname: "Simon Markus Jochem",
      lastname: "Rupp",
      matriculation-number: "0000000",
      course: "TINF24B2",
      // signature: image("assets/placeholder-signature.png"),
    ), 
    (
      firstname: "Mattis  Lennart",
      lastname: "Geiger",
      matriculation-number: "3538462",
      course: "TINF24B2",
    ),
  ),

  signature-city: "Karlsruhe",

  // Set to specific date with "24.12.2026"
  submission-date: datetime.today().display("[day].[month].[year]"),

  processing-period-weeks: 12,

  university-supervisor: "Prof. Dr. Markus Reischl",

  // acknowledgements: usage: (
  //   content: [content] || include("front-matter/acknowledgements.typ")
  // )
  // remove property to remove acknowledgements
  acknowledgements: (
    include "misc/acknowledgments.typ"
  ),

  // abstracs: usage: (language, language (displayed), content)
  abstracts: (
    ("de", "Deutsch", include "misc/abstract-german.typ"),
    ("en", "English", include "misc/abstract-english.typ"),
  ),

  // Appendix can be configured in appendix.typ
  // remove property to remove appendices
  appendices: appendices,

  // Bibliography
  library: bibliography("refs.bib"),

  abbreviations: abbreviations,
  glossary: glossary,
)

// You can now start writing :)

#include "chapters/introduction.typ"
#include "chapters/technical-background.typ"
#include "chapters/new-concept.typ"
#include "chapters/implementation.typ"
#include "chapters/results.typ"
#include "chapters/discussion.typ"
#include "chapters/conclusion.typ"
