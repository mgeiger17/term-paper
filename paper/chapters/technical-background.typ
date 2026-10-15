#import "../variables-registry.typ": *


//  15%: 12 Seiten
= Stand der Technik

== Schallwahrnehmung des Menschen
Simon
- Menschliche Gehörwahrnehmung und Frequenzskalierung (Mel-Skala)
- Logarithmische Lautstärkewahrnehmung

== Grundlagen der Audiosignalverarbeitung
=== Fast-Fourier-Transformation (FFT) und Zeit-Frequenz-Darstellung (STFT, Spektrogramme)
Simon

=== Mehrkanalige Signalverarbeitung und Binaurales Hören
Simon

== Verfahren zur Quellentrennung und Sprachverbesserung
=== Blind Source Separation (BSS) vs. Target Speaker Extraction (TSE)
Mattis

In der Forschung existieren drei verwandte Problemestellungen, die für diese Arbeit relevant sind.
+ @bss:
+ @tse
+ @nr oder auch
=== Räumliche Filterung (Beamforming)
Mattis

== Deep-Learning-Ansätze in der Zielsprecherextraktion
=== Historische Entwicklung der Sprechereinbettung (von i-Vectors zu x-Vectors)
Mattis
=== Modellierung im Zeit- und Frequenzbereich (NN, CNN, Conv-TasNet, TF-GridNet)
Mattis

=== Zusatzinformationen (Clues): Audio, Visuell (Lippenlesen) und Räumlich
Mattis

=== Diskriminative vs. Generative Modelle
Mattis

== Evaluationsmetriken

=== Objektive Sprachgüte- und Trennungsmetriken (SI-SDR, STOI, PESQ)
Simmon
