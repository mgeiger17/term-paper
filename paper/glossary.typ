#let abbreviations = (
  (key: "nn", short: "NN", long: "Neural Network"),
  (key: "bss", short: "BSS", long: "Blind Source Separation"),
  (key: "tse", short: "TSE", long: "Target Speech Extraction"),
  (key: "nr", short: "NR", long: "Noise Reduction"),
  (key: "anc", short: "ANC", long: "Active Noise Control"),
)

// Specify glossary terms here for term definitions (not abbreviations).
// The key is used to reference the term.
// The long form is the term and the short form is the abbreviation (only if you need it).
// The description is used for the detailed explanation of the term.
// Set to empty array () if you don't need a glossary.
#let glossary = (
  (
    key: "typ",
    short: "Typst",
    description: "Typst is a new markup-based typesetting system that is designed to be as powerful as LaTeX while being much easier to learn and use.",
  ),
  (
    key: "glossarium",
    short: "Glossarium",
    description: [Glossarium is a simple, easily customizable typst glossary inspired by the #link("https://www.ctan.org/pkg/glossaries", "LaTeX glossaries package")],
    group: "Dependencies",
  ),
  (
    key: "drafting",
    short: "Drafting",
    description: [
      The Drafting package contains functions for content positioning and margin comments/notes.
    ],
    group: "Dependencies",
  ),
  (
    key: "codly",
    short: "Codly",
    description: [
      Codly provides styled code blocks with many features like smart indentation, line numbering, highlighting, etc.
    ],
    group: "Dependencies",
  ),
  (
    key: "hydra",
    short: "Hydra",
    description: [
      Hydra is a Typst package allowing easily displaying the current heading in the page header.
    ],
    group: "Dependencies",
  ),
  (
    key: "linguify",
    short: "Linguify",
    description: [
      Linguify brings #link("https://projectfluent.org/fluent/guide/", "fluent") support to typst, enabling easy i18n.
    ],
    group: "Dependencies",
  ),
)
