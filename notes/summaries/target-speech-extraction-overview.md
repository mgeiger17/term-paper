---
tags:
  - paper, targetSpeechExtraction
---

# Neural Target Speech Extraction: Overview
**Link:** https://ieeexplore.ieee.org/abstract/document/10113382?casa_token=89fwCez9mh4AAAAA:ab1Te0KvrL-TiPHCtVqPrS02XTJoeXOO1yUL_3_iTn4TdmVJd2ndkmqMb1epdnIkUeDmu9NhDyIKbTc

> Übersicht über verschiednene Techniken unter Verwendung von Klassfikationen: clues $\in [spatial, voice, visual]$, Anzahl der Inputchannels, Speaker close oder open (neue oder nur bekannte) und Generative oder Diskriminative Modelle (Modellierung der Entstehung der sauberen Sprache, Direkte Trennung Abbildung von Gemisch zu sauberen Signal)  

## Problem & Ziel

Target Speech Extraction (TSE)
- Target Speech Extraction (TSE) steht im Zusammenhang mit 
	- Noice Reduction spezifisch *personalized speech enhancement*, was einen Sprecher hervorhebt und andere Sprecher und Geräusche unterdrücken will
	- Blind source seperation (BSS): Hier werden keine Clues mitgegeben es ist also eine kompleziertere Version 
- Unteraufgaben
	- Identifizierung des Zielsprechers
	- Geschätzte Sprachfrequenz von diesem Sprecher
- Historie
	- 1980 enhancing speker's voice in a speech mixture mit der Anahme eienr fixierten Richtung und einer Menge an Mikrofonen -> räumliche Filter
	- 1990 BSS problem Independent Component Analysis (ICA), hier versucht man schätzungen des räumlichen Filters zu machen mit der Annahme die Quellen sind unabhängig und nicht Gausverteilt im Frequenzbereich
	- mid 2000s: independent Vector Analysis (IVA) -> Problem von ICA versucht zu lösen, nämlich die Permutationen von den einzelnen Quellen. Nutzt irgenwie Vektoren, die über mehere Frequenzbänder gehen
	- 2010s: Independet Vector extraction als Erweiterung von IVA, Nutzung von Clues
	- 2010s: pretrained spectral models für F-HMM factorial hidden markov model und  nonenegative matrix factorization (NMF). F-HMM lernt die Sprache baseirend auf Clues für jeden Sprecher mit "klarer" Sprache (ohne Störfrequenzen).
- Framework für eine einheitliche Betrachtung der verschiedenen TSE-Ansätze
	- 3 Layer: Mixture Encoder -> Fusion Layer -> Target Extractor
	![[Pasted image 20261015111044.png]]
	- SNR wird als Metrik für Loss-Funktion genutzt

- 
## Wie
- Eine allgemeine Pipeline aufgebaut, um die Modelleansätze vergleichen zu können auch ohne, dass sie exakt die gleichen Input-Parameter bekommen haben.